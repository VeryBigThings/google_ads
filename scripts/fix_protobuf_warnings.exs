#!/usr/bin/env elixir

# This script removes explicit @type and defstruct definitions from protobuf files
# that were generated with older versions of protoc-gen-elixir.
# The protobuf library (v0.10+) automatically generates these, so having
# explicit definitions causes warnings/errors.

defmodule ProtobufFixer do
  def fix_file(file_path) do
    content = File.read!(file_path)

    # Skip if the file is already using a recent version
    if String.contains?(content, "protoc_gen_elixir_version:") do
      IO.puts("Skipping #{file_path} - already has version marker")
      :skipped
    else
      # Remove explicit defstruct and @type definitions
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
    content
    |> remove_defstruct_definitions()
    |> remove_type_definitions()
  end

  # Remove lines like:  defstruct [:field1, :field2]
  # or multiline defstructs
  defp remove_defstruct_definitions(content) do
    # First, handle single-line defstructs
    content = Regex.replace(~r/^\s+defstruct\s+\[.*?\]\s*$/m, content, "")

    # Handle multiline defstructs (defstruct [...])
    Regex.replace(
      ~r/^\s+defstruct\s+\[[^\]]*\]\s*$/ms,
      content,
      ""
    )
  end

  # Remove @type t :: definitions
  defp remove_type_definitions(content) do
    # Match @type t :: %__MODULE__{...} including multiline
    Regex.replace(
      ~r/^\s+@type\s+t\s+::\s+%__MODULE__\{[^}]*\}\s*$/ms,
      content,
      ""
    )
  end

  def process_directory(dir) do
    Path.wildcard("#{dir}/**/*.pb.ex")
    |> Enum.reduce(%{fixed: 0, skipped: 0, no_changes: 0}, fn file, acc ->
      result = fix_file(file)
      Map.update(acc, result, 1, &(&1 + 1))
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
