defmodule Google.Ads.Googleads.V8.Resources.CurrencyConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          code: String.t(),
          name: String.t(),
          symbol: String.t(),
          billable_unit_micros: integer
        }

  defstruct [:resource_name, :code, :name, :symbol, :billable_unit_micros]

  field :resource_name, 1, optional: true, type: :string
  field :code, 6, optional: true, type: :string
  field :name, 7, optional: true, type: :string
  field :symbol, 8, optional: true, type: :string
  field :billable_unit_micros, 9, optional: true, type: :int64
end
