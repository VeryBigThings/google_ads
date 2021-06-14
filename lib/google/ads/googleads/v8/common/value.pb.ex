defmodule Google.Ads.Googleads.V8.Common.Value do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0
  field :boolean_value, 1, optional: true, type: :bool, oneof: 0
  field :int64_value, 2, optional: true, type: :int64, oneof: 0
  field :float_value, 3, optional: true, type: :float, oneof: 0
  field :double_value, 4, optional: true, type: :double, oneof: 0
  field :string_value, 5, optional: true, type: :string, oneof: 0
end
