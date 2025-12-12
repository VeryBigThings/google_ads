#!/usr/bin/env elixir

# This script removes explicit @type and defstruct definitions from protobuf files

defmodule ProtobufFixer do
  def fix_file(file_path) do
    content = File.read!(file_path)

    # Skip if already has version marker
    if String.contains?(content, "protoc_gen_elixir_version:") do
      :skipped
    else
      fixed_content = fix_content(content)

      if fixed_content != content do
        File.write!(file_path, fixed_content)
        IO.puts("Fixed #{file_path}")
        :fixed
      else
        :no_changes
      end
    end
  end

  def fix_content(content) do
    lines = String.split(content, "\n")
    {fixed_lines, _} = process_lines(lines, [], :normal)
    Enum.join(Enum.reverse(fixed_lines), "\n")
  end

  defp process_lines([], acc, _state), do: {acc, []}

  defp process_lines([line | rest], acc, state) do
    cond do
      # Start of @type definition
      state == :normal and String.match?(line, ~r/^\s+@type\s+t\s+::\s+%__MODULE__\{/) ->
        process_lines(rest, acc, :in_type)

      # End of @type definition
      state == :in_type and String.match?(line, ~r/^\s+\}\s*$/) ->
        process_lines(rest, acc, :normal)

      # Inside @type - skip
      state == :in_type ->
        process_lines(rest, acc, :in_type)

      # Start of defstruct
      state == :normal and String.match?(line, ~r/^\s+defstruct\s+\[/) ->
        # Check if it's a single-line defstruct
        if String.contains?(line, "]") do
          # Single line defstruct - skip it
          process_lines(rest, acc, :normal)
        else
          # Multi-line defstruct
          process_lines(rest, acc, :in_defstruct)
        end

      # Inside defstruct - skip until we find the closing ]
      state == :in_defstruct ->
        if String.match?(line, ~r/^\s+\]\s*$/) do
          process_lines(rest, acc, :normal)
        else
          process_lines(rest, acc, :in_defstruct)
        end

      # Normal line - keep it
      true ->
        process_lines(rest, [line | acc], state)
    end
  end

  def process_directory(dir) do
    Path.wildcard("#{dir}/**/*.pb.ex")
    |> Enum.reduce(%{fixed: 0, skipped: 0, no_changes: 0, errors: 0}, fn file, acc ->
      try do
        result = fix_file(file)
        Map.update(acc, result, 1, &(&1 + 1))
      rescue
        e ->
          IO.puts("Error processing #{file}: #{inspect(e)}")
          Map.update(acc, :errors, 1, &(&1 + 1))
      end
    end)
  end
end

IO.puts("Processing protobuf files...")
results = ProtobufFixer.process_directory("lib")

IO.puts("\nSummary:")
IO.puts("  Fixed: #{results[:fixed] || 0}")
IO.puts("  Skipped (recent version): #{results[:skipped] || 0}")
IO.puts("  No changes needed: #{results[:no_changes] || 0}")
IO.puts("  Errors: #{results[:errors] || 0}")
