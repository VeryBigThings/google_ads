defmodule Google.Ads.Googleads.V8.Resources.AdGroupCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :point_list, 0
  field :resource_name, 1, optional: true, type: :string
  field :ad_group_id, 9, optional: true, type: :int64
  field :criterion_id, 10, optional: true, type: :int64

  field :type, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 5,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 11, optional: true, type: :string
  field :end_date, 12, optional: true, type: :string

  field :cpc_bid_point_list, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CpcBidSimulationPointList,
    oneof: 0

  field :percent_cpc_bid_point_list, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPointList,
    oneof: 0
end
