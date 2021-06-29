defmodule Google.Ads.Googleads.V8.Resources.CurrencyConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          code: String.t(),
          name: String.t(),
          symbol: String.t(),
          billable_unit_micros: integer
        }

  defstruct [:resource_name, :code, :name, :symbol, :billable_unit_micros]

  field :resource_name, 1, type: :string
  field :code, 6, type: :string
  field :name, 7, type: :string
  field :symbol, 8, type: :string
  field :billable_unit_micros, 9, type: :int64
end
