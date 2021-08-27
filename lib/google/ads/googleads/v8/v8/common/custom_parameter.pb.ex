defmodule Google.Ads.Googleads.V8.Common.CustomParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }
  defstruct [:key, :value]

  field :key, 3, type: :string
  field :value, 4, type: :string
end
