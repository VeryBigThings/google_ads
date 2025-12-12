defmodule Google.Ads.Googleads.V4.Resources.CustomerClient do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :client_customer, 3, type: Google.Protobuf.StringValue
  field :hidden, 4, type: Google.Protobuf.BoolValue
  field :level, 5, type: Google.Protobuf.Int64Value
  field :time_zone, 6, type: Google.Protobuf.StringValue
  field :test_account, 7, type: Google.Protobuf.BoolValue
  field :manager, 8, type: Google.Protobuf.BoolValue
  field :descriptive_name, 9, type: Google.Protobuf.StringValue
  field :currency_code, 10, type: Google.Protobuf.StringValue
  field :id, 11, type: Google.Protobuf.Int64Value
end
