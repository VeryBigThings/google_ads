defmodule Google.Ads.Googleads.V8.Resources.AdGroupSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          point_list: {atom, any},
          resource_name: String.t(),
          ad_group_id: integer,
          type: Google.Ads.Googleads.V8.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V8.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct [
    :point_list,
    :resource_name,
    :ad_group_id,
    :type,
    :modification_method,
    :start_date,
    :end_date
  ]

  oneof :point_list, 0
  field :resource_name, 1, required: true, type: :string
  field :ad_group_id, 12, optional: true, type: :int64

  field :type, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 4,
    required: true,
    type:
      Google.Ads.Googleads.V8.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 13, optional: true, type: :string
  field :end_date, 14, optional: true, type: :string

  field :cpc_bid_point_list, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CpcBidSimulationPointList,
    oneof: 0

  field :cpv_bid_point_list, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CpvBidSimulationPointList,
    oneof: 0

  field :target_cpa_point_list, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetCpaSimulationPointList,
    oneof: 0

  field :target_roas_point_list, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetRoasSimulationPointList,
    oneof: 0
end
