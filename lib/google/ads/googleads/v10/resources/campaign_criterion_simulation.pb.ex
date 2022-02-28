defmodule Google.Ads.Googleads.V10.Resources.CampaignCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list:
            {:bid_modifier_point_list,
             Google.Ads.Googleads.V10.Common.BidModifierSimulationPointList.t() | nil},
          resource_name: String.t(),
          campaign_id: integer,
          criterion_id: integer,
          type: Google.Ads.Googleads.V10.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V10.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct point_list: nil,
            resource_name: "",
            campaign_id: 0,
            criterion_id: 0,
            type: :UNSPECIFIED,
            modification_method: :UNSPECIFIED,
            start_date: "",
            end_date: ""

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign_id, 9, type: :int64, json_name: "campaignId", deprecated: false
  field :criterion_id, 10, type: :int64, json_name: "criterionId", deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V10.Enums.SimulationTypeEnum.SimulationType,
    enum: true,
    deprecated: false

  field :modification_method, 5,
    type:
      Google.Ads.Googleads.V10.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    json_name: "modificationMethod",
    enum: true,
    deprecated: false

  field :start_date, 11, type: :string, json_name: "startDate", deprecated: false
  field :end_date, 12, type: :string, json_name: "endDate", deprecated: false

  field :bid_modifier_point_list, 8,
    type: Google.Ads.Googleads.V10.Common.BidModifierSimulationPointList,
    json_name: "bidModifierPointList",
    oneof: 0,
    deprecated: false
end
