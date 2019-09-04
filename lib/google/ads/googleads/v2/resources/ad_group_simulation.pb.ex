defmodule Google.Ads.Googleads.V2.Resources.AdGroupSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list: {atom, any},
          resource_name: String.t(),
          ad_group_id: Google.Protobuf.Int64Value.t() | nil,
          type: atom | integer,
          modification_method: atom | integer,
          start_date: Google.Protobuf.StringValue.t() | nil,
          end_date: Google.Protobuf.StringValue.t() | nil
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

  oneof(:point_list, 0)
  field(:resource_name, 1, type: :string)
  field(:ad_group_id, 2, type: Google.Protobuf.Int64Value)

  field(:type, 3,
    type: Google.Ads.Googleads.V2.Enums.SimulationTypeEnum.SimulationType,
    enum: true
  )

  field(:modification_method, 4,
    type:
      Google.Ads.Googleads.V2.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true
  )

  field(:start_date, 5, type: Google.Protobuf.StringValue)
  field(:end_date, 6, type: Google.Protobuf.StringValue)

  field(:cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V2.Common.CpcBidSimulationPointList,
    oneof: 0
  )

  field(:cpv_bid_point_list, 10,
    type: Google.Ads.Googleads.V2.Common.CpvBidSimulationPointList,
    oneof: 0
  )

  field(:target_cpa_point_list, 9,
    type: Google.Ads.Googleads.V2.Common.TargetCpaSimulationPointList,
    oneof: 0
  )
end
