defmodule Google.Ads.Googleads.V8Availabilities.Resources.BiddingStrategySimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :point_list, 0

  field :resource_name, 1, type: :string
  field :bidding_strategy_id, 2, type: :int64

  field :type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 4,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 5, type: :string
  field :end_date, 6, type: :string

  field :target_cpa_point_list, 7,
    type: Google.Ads.Googleads.V8Availabilities.Common.TargetCpaSimulationPointList,
    oneof: 0

  field :target_roas_point_list, 8,
    type: Google.Ads.Googleads.V8Availabilities.Common.TargetRoasSimulationPointList,
    oneof: 0
end
