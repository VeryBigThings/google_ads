#!/usr/bin/env elixir

# Fix enum @type definitions

defmodule EnumFixer do
  def fix_file(file_path) do
    content = File.read!(file_path)

    # Skip if already modern
    if String.contains?(content, "protoc_gen_elixir_version:") or
       not String.contains?(content, "enum: true") do
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
      # @type t :: line (enum style)
      state == :normal and Regex.match?(~r/^\s+@type\s+t\s+::/, line) ->
        # Skip until we find a line that's not a continuation (starts with |)
        process(rest, acc, :skip_enum_type)

      # Continuation of enum type (starts with whitespace and |)
      state == :skip_enum_type and Regex.match?(~r/^\s+\|/, line) ->
        process(rest, acc, :skip_enum_type)

      # End of enum type continuation
      state == :skip_enum_type ->
        # This line is not a continuation, so process it normally
        process([line | rest], acc, :normal)

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

IO.puts("Fixing enum types...")
results = EnumFixer.process_directory("lib")

IO.puts("\nDone:")
IO.puts("  Fixed: #{results[:fixed] || 0}")
IO.puts("  Skipped: #{results[:skipped] || 0}")
IO.puts("  No changes: #{results[:no_changes] || 0}")
