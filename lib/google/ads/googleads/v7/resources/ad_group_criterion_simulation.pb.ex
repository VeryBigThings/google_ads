defmodule Google.Ads.Googleads.V7.Resources.AdGroupCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :point_list, 0

  field :resource_name, 1, type: :string
  field :ad_group_id, 9, type: :int64
  field :criterion_id, 10, type: :int64

  field :type, 4,
    type: Google.Ads.Googleads.V7.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 5,
    type:
      Google.Ads.Googleads.V7.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 11, type: :string
  field :end_date, 12, type: :string

  field :cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V7.Common.CpcBidSimulationPointList,
    oneof: 0

  field :percent_cpc_bid_point_list, 13,
    type: Google.Ads.Googleads.V7.Common.PercentCpcBidSimulationPointList,
    oneof: 0
end
