defmodule Google.Ads.Googleads.V4.Resources.KeywordPlanCampaign do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :keyword_plan, 2, type: Google.Protobuf.StringValue
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue
  field :language_constants, 5, repeated: true, type: Google.Protobuf.StringValue

  field :keyword_plan_network, 6,
    type: Google.Ads.Googleads.V4.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true

  field :cpc_bid_micros, 7, type: Google.Protobuf.Int64Value

  field :geo_targets, 8,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.KeywordPlanGeoTarget
end

defmodule Google.Ads.Googleads.V4.Resources.KeywordPlanGeoTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :geo_target_constant, 1, type: Google.Protobuf.StringValue
end
