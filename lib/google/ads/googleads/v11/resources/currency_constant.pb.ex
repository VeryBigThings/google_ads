defmodule Google.Ads.Googleads.V11.Resources.CurrencyConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          code: String.t(),
          name: String.t(),
          symbol: String.t(),
          billable_unit_micros: integer
        }

  defstruct resource_name: "",
            code: "",
            name: "",
            symbol: "",
            billable_unit_micros: 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :code, 6, type: :string, deprecated: false
  field :name, 7, type: :string, deprecated: false
  field :symbol, 8, type: :string, deprecated: false
  field :billable_unit_micros, 9, type: :int64, json_name: "billableUnitMicros", deprecated: false
end
