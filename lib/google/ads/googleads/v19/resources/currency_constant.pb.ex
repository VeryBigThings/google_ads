defmodule Google.Ads.Googleads.V19.Resources.CurrencyConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :code, 6, type: :string, deprecated: false
  field :name, 7, type: :string, deprecated: false
  field :symbol, 8, type: :string, deprecated: false
  field :billable_unit_micros, 9, type: :int64, json_name: "billableUnitMicros", deprecated: false
end
