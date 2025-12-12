#!/usr/bin/env elixir

#This script removes explicit @type and defstruct from old protobuf files

defmodule ProtobufFixer do
  def fix_file(file_path) do
    content = File.read!(file_path)

    # Skip if already modern
    if String.contains?(content, "protoc_gen_elixir_version:") do
      :skipped
    else
      fixed = fix_content(content)

      if fixed != content do
        File.write!(file_path, fixed)
        IO.puts("Fixed #{file_path}")
        :fixed
      else
        :no_changes
      end
    end
  end

  def fix_content(content) do
    lines = String.split(content, "\n")
    {result, _} = process(lines, [], :normal)
    Enum.join(Enum.reverse(result), "\n")
  end

  defp process([], acc, _), do: {acc, []}

  defp process([line | rest], acc, state) do
    cond do
      # @type t :: line
      state == :normal and Regex.match?(~r/^\s+@type\s+t\s+::\s+%__MODULE__/, line) ->
        # Check if it's single line (ends with })
        if String.contains?(line, "}") do
          process(rest, acc, :normal)
        else
          process(rest, acc, :skip_type)
        end

      # In @type, looking for closing }
      state == :skip_type and Regex.match?(~r/^\s+\}\s*$/, line) ->
        process(rest, acc, :normal)

      # In @type, skip
      state == :skip_type ->
        process(rest, acc, :skip_type)

      # defstruct line
      state == :normal and Regex.match?(~r/^\s+defstruct\s+/, line) ->
        # Check if it ends with ]
        if String.contains?(line, "]") do
          process(rest, acc, :normal)
        else
          process(rest, acc, :skip_struct)
        end

      # In defstruct, looking for ]
      state == :skip_struct and Regex.match?(~r/^\s+\]\s*$/, line) ->
        process(rest, acc, :normal)

      # In defstruct, skip
      state == :skip_struct ->
        process(rest, acc, :skip_struct)

      # Normal line
      true ->
        process(rest, [line | acc], state)
    end
  end

  def process_directory(dir) do
    Path.wildcard("#{dir}/**/*.pb.ex")
    |> Enum.reduce(%{fixed: 0, skipped: 0, no_changes: 0}, fn file, acc ->
      try do
        result = fix_file(file)
        Map.update(acc, result, 1, &(&1 + 1))
      rescue
        _ -> acc
      end
    end)
  end
end

IO.puts("Fixing...")
results = ProtobufFixer.process_directory("lib")

IO.puts("\nDone:")
IO.puts("  Fixed: #{results[:fixed] || 0}")
IO.puts("  Skipped: #{results[:skipped] || 0}")
IO.puts("  No changes: #{results[:no_changes] || 0}")
