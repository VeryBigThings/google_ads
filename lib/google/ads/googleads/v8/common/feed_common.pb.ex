defmodule Google.Ads.Googleads.V8.Common.Money do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          currency_code: Google.Protobuf.StringValue.t() | nil,
          amount_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:currency_code, :amount_micros]

  field :currency_code, 3, type: Google.Protobuf.StringValue
  field :amount_micros, 4, type: Google.Protobuf.Int64Value
end
