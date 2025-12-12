defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :keyword_plan_campaign, 6, optional: true, type: :string
  field :id, 7, optional: true, type: :int64
  field :name, 8, optional: true, type: :string
  field :cpc_bid_micros, 9, optional: true, type: :int64
end
