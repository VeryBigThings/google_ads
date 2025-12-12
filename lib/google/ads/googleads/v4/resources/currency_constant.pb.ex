defmodule Google.Ads.Googleads.V4.Resources.CurrencyConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :code, 2, type: Google.Protobuf.StringValue
  field :name, 3, type: Google.Protobuf.StringValue
  field :symbol, 4, type: Google.Protobuf.StringValue
  field :billable_unit_micros, 5, type: Google.Protobuf.Int64Value
end
