defmodule Google.Ads.Googleads.V10.Resources.AdGroupCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list:
            {:cpc_bid_point_list,
             Google.Ads.Googleads.V10.Common.CpcBidSimulationPointList.t() | nil}
            | {:percent_cpc_bid_point_list,
               Google.Ads.Googleads.V10.Common.PercentCpcBidSimulationPointList.t() | nil},
          resource_name: String.t(),
          ad_group_id: integer,
          criterion_id: integer,
          type: Google.Ads.Googleads.V10.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V10.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct point_list: nil,
            resource_name: "",
            ad_group_id: 0,
            criterion_id: 0,
            type: :UNSPECIFIED,
            modification_method: :UNSPECIFIED,
            start_date: "",
            end_date: ""

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group_id, 9, type: :int64, json_name: "adGroupId", deprecated: false
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

  field :cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V10.Common.CpcBidSimulationPointList,
    json_name: "cpcBidPointList",
    oneof: 0,
    deprecated: false

  field :percent_cpc_bid_point_list, 13,
    type: Google.Ads.Googleads.V10.Common.PercentCpcBidSimulationPointList,
    json_name: "percentCpcBidPointList",
    oneof: 0,
    deprecated: false
end
