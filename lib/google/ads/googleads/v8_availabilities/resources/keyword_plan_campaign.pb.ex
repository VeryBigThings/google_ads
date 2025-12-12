defmodule Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanCampaign do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :keyword_plan, 9, type: :string
  field :id, 10, type: :int64
  field :name, 11, type: :string
  field :language_constants, 12, repeated: true, type: :string

  field :keyword_plan_network, 6,
    type: Google.Ads.Googleads.V8Availabilities.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true

  field :cpc_bid_micros, 13, type: :int64

  field :geo_targets, 8,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanGeoTarget
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanGeoTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :geo_target_constant, 2, type: :string
end
