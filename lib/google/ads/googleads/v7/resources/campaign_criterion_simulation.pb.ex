defmodule Google.Ads.Googleads.V7.Resources.CampaignCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list: {atom, any},
          resource_name: String.t(),
          campaign_id: integer,
          criterion_id: integer,
          type: Google.Ads.Googleads.V7.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V7.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: String.t(),
          end_date: String.t()
        }
  defstruct [
    :point_list,
    :resource_name,
    :campaign_id,
    :criterion_id,
    :type,
    :modification_method,
    :start_date,
    :end_date
  ]

  oneof :point_list, 0

  field :resource_name, 1, type: :string
  field :campaign_id, 9, type: :int64
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

  field :bid_modifier_point_list, 8,
    type: Google.Ads.Googleads.V7.Common.BidModifierSimulationPointList,
    oneof: 0
end
