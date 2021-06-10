defmodule Google.Ads.Googleads.V8.Common.CustomParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Protobuf.StringValue.t() | nil,
          value: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 3, type: Google.Protobuf.StringValue
  field :value, 4, type: Google.Protobuf.StringValue
end
