defmodule Google.Ads.Googleads.V10.Resources.AdGroupSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list:
            {:cpc_bid_point_list,
             Google.Ads.Googleads.V10.Common.CpcBidSimulationPointList.t() | nil}
            | {:cpv_bid_point_list,
               Google.Ads.Googleads.V10.Common.CpvBidSimulationPointList.t() | nil}
            | {:target_cpa_point_list,
               Google.Ads.Googleads.V10.Common.TargetCpaSimulationPointList.t() | nil}
            | {:target_roas_point_list,
               Google.Ads.Googleads.V10.Common.TargetRoasSimulationPointList.t() | nil},
          resource_name: String.t(),
          ad_group_id: integer,
          type: Google.Ads.Googleads.V10.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V10.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct point_list: nil,
            resource_name: "",
            ad_group_id: 0,
            type: :UNSPECIFIED,
            modification_method: :UNSPECIFIED,
            start_date: "",
            end_date: ""

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group_id, 12, type: :int64, json_name: "adGroupId", deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V10.Enums.SimulationTypeEnum.SimulationType,
    enum: true,
    deprecated: false

  field :modification_method, 4,
    type:
      Google.Ads.Googleads.V10.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    json_name: "modificationMethod",
    enum: true,
    deprecated: false

  field :start_date, 13, type: :string, json_name: "startDate", deprecated: false
  field :end_date, 14, type: :string, json_name: "endDate", deprecated: false

  field :cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V10.Common.CpcBidSimulationPointList,
    json_name: "cpcBidPointList",
    oneof: 0,
    deprecated: false

  field :cpv_bid_point_list, 10,
    type: Google.Ads.Googleads.V10.Common.CpvBidSimulationPointList,
    json_name: "cpvBidPointList",
    oneof: 0,
    deprecated: false

  field :target_cpa_point_list, 9,
    type: Google.Ads.Googleads.V10.Common.TargetCpaSimulationPointList,
    json_name: "targetCpaPointList",
    oneof: 0,
    deprecated: false

  field :target_roas_point_list, 11,
    type: Google.Ads.Googleads.V10.Common.TargetRoasSimulationPointList,
    json_name: "targetRoasPointList",
    oneof: 0,
    deprecated: false
end
