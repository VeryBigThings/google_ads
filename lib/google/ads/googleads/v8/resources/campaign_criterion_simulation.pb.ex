defmodule Google.Ads.Googleads.V8.Resources.CampaignCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          point_list: {atom, any},
          resource_name: String.t(),
          campaign_id: integer,
          criterion_id: integer,
          type: Google.Ads.Googleads.V8.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V8.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
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
  field :resource_name, 1, required: true, type: :string
  field :campaign_id, 9, optional: true, type: :int64
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

  field :bid_modifier_point_list, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.BidModifierSimulationPointList,
    oneof: 0
end
