defmodule Google.Protobuf.FieldMask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  defstruct [:paths]

  @type t :: %__MODULE__{
          paths: [String.t()]
        }

  field(:paths, 1, repeated: true, type: :string)
end
