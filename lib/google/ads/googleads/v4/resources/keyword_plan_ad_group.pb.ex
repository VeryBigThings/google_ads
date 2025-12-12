defmodule Google.Ads.Googleads.V4.Resources.KeywordPlanAdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :keyword_plan_campaign, 2, type: Google.Protobuf.StringValue
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue
  field :cpc_bid_micros, 5, type: Google.Protobuf.Int64Value
end
