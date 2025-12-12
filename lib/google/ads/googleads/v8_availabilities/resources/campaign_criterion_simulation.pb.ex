defmodule Google.Ads.Googleads.V8Availabilities.Resources.CampaignCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :point_list, 0

  field :resource_name, 1, type: :string
  field :campaign_id, 9, type: :int64
  field :criterion_id, 10, type: :int64

  field :type, 4,
    type: Google.Ads.Googleads.V8Availabilities.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 5,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 11, type: :string
  field :end_date, 12, type: :string

  field :bid_modifier_point_list, 8,
    type: Google.Ads.Googleads.V8Availabilities.Common.BidModifierSimulationPointList,
    oneof: 0
end
