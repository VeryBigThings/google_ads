#!/usr/bin/env elixir

# Complete fix for all protobuf warnings

defmodule ProtobufComplete do
  def fix_file(file_path) do
    content = File.read!(file_path)

    # Skip if modern
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
      # @type t :: for messages (has %__MODULE__{)
      state == :normal and Regex.match?(~r/^\s+@type\s+t\s+::\s+%__MODULE__/, line) ->
        if String.contains?(line, "}") do
          process(rest, acc, :normal)
        else
          process(rest, acc, :skip_message_type)
        end

      state == :skip_message_type and Regex.match?(~r/^\s+\}\s*$/, line) ->
        process(rest, acc, :normal)

      state == :skip_message_type ->
        process(rest, acc, :skip_message_type)

      # @type t :: for enums (doesn't have %__MODULE__{)
      state == :normal and Regex.match?(~r/^\s+@type\s+t\s+::/, line) ->
        process(rest, acc, :skip_enum_type)

      # Lines in enum type definition (either start with | or are indented continuations)
      state == :skip_enum_type ->
        # Check if it's a continuation (starts with whitespace followed by | or is just whitespace and more enum values)
        if Regex.match?(~r/^\s+(\||integer)/, line) or (String.trim(line) == "" and length(rest) > 0) do
          process(rest, acc, :skip_enum_type)
        else
          # Not a continuation, process normally
          process([line | rest], acc, :normal)
        end

      # defstruct
      state == :normal and Regex.match?(~r/^\s+defstruct\s+/, line) ->
        if String.contains?(line, "]") do
          process(rest, acc, :normal)
        else
          process(rest, acc, :skip_struct)
        end

      state == :skip_struct and Regex.match?(~r/^\s+\]\s*$/, line) ->
        process(rest, acc, :normal)

      state == :skip_struct ->
        process(rest, acc, :skip_struct)

      # Normal
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

IO.puts("Fixing all protobuf files...")
results = ProtobufComplete.process_directory("lib")

IO.puts("\nDone:")
IO.puts("  Fixed: #{results[:fixed] || 0}")
IO.puts("  Skipped: #{results[:skipped] || 0}")
IO.puts("  No changes: #{results[:no_changes] || 0}")
