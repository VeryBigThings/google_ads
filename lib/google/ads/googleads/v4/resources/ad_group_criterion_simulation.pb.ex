defmodule Google.Ads.Googleads.V4.Resources.AdGroupCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :point_list, 0

  field :resource_name, 1, type: :string
  field :ad_group_id, 2, type: Google.Protobuf.Int64Value
  field :criterion_id, 3, type: Google.Protobuf.Int64Value

  field :type, 4,
    type: Google.Ads.Googleads.V4.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 5,
    type:
      Google.Ads.Googleads.V4.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 6, type: Google.Protobuf.StringValue
  field :end_date, 7, type: Google.Protobuf.StringValue

  field :cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V4.Common.CpcBidSimulationPointList,
    oneof: 0
end
