defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :keyword_plan, 9, optional: true, type: :string
  field :id, 10, optional: true, type: :int64
  field :name, 11, optional: true, type: :string
  field :language_constants, 12, repeated: true, type: :string

  field :keyword_plan_network, 6,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true

  field :cpc_bid_micros, 13, optional: true, type: :int64

  field :geo_targets, 8,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanGeoTarget
end

defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanGeoTarget do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :geo_target_constant, 2, optional: true, type: :string
end
