#!/usr/bin/env elixir

# This script removes explicit @type and defstruct definitions from protobuf files
# that were generated with older versions of protoc-gen-elixir.

defmodule ProtobufFixer do
  def fix_file(file_path) do
    content = File.read!(file_path)

    # Skip if the file is already using protoc_gen_elixir_version marker
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
    fixed_lines = process_lines(lines, [])
    Enum.join(fixed_lines, "\n")
  end

  defp process_lines([], acc), do: Enum.reverse(acc)

  defp process_lines([line | rest], acc) do
    cond do
      # Skip defstruct lines
      String.match?(line, ~r/^\s+defstruct\s+\[/) ->
        process_lines(rest, acc)

      # Start of @type t :: definition - skip until we find the closing }
      String.match?(line, ~r/^\s+@type\s+t\s+::\s+%__MODULE__\{/) ->
        rest_after_type = skip_until_closing_brace(rest)
        process_lines(rest_after_type, acc)

      # Keep everything else
      true ->
        process_lines(rest, [line | acc])
    end
  end

  defp skip_until_closing_brace([line | rest]) do
    # Check if this line contains the closing } for the @type definition
    if String.match?(line, ~r/^\s+\}\s*$/) do
      rest
    else
      skip_until_closing_brace(rest)
    end
  end

  defp skip_until_closing_brace([]), do: []

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

# Process all protobuf files in the lib directory
IO.puts("Processing protobuf files...")
results = ProtobufFixer.process_directory("lib")

IO.puts("\nSummary:")
IO.puts("  Fixed: #{results[:fixed] || 0}")
IO.puts("  Skipped (recent version): #{results[:skipped] || 0}")
IO.puts("  No changes needed: #{results[:no_changes] || 0}")
IO.puts("  Errors: #{results[:errors] || 0}")
