defmodule Google.Ads.Googleads.V8.Common.Money do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          currency_code: String.t(),
          amount_micros: integer
        }
  defstruct [:currency_code, :amount_micros]

  field :currency_code, 3, type: :string
  field :amount_micros, 4, type: :int64
end
