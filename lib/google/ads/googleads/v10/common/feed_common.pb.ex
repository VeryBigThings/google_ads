defmodule Google.Ads.Googleads.V10.Common.Money do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          currency_code: String.t(),
          amount_micros: integer
        }

  defstruct currency_code: "",
            amount_micros: 0

  field :currency_code, 3, type: :string, json_name: "currencyCode"
  field :amount_micros, 4, type: :int64, json_name: "amountMicros"
end
