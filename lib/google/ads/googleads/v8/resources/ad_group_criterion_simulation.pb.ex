defmodule Google.Ads.Googleads.V8.Resources.AdGroupCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list: {atom, any},
          resource_name: String.t(),
          ad_group_id: Google.Protobuf.Int64Value.t() | nil,
          criterion_id: Google.Protobuf.Int64Value.t() | nil,
          type: Google.Ads.Googleads.V8.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V8.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: Google.Protobuf.StringValue.t() | nil,
          end_date: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :point_list,
    :resource_name,
    :ad_group_id,
    :criterion_id,
    :type,
    :modification_method,
    :start_date,
    :end_date
  ]

  oneof :point_list, 0
  field :resource_name, 1, type: :string
  field :ad_group_id, 9, type: Google.Protobuf.Int64Value
  field :criterion_id, 10, type: Google.Protobuf.Int64Value

  field :type, 4,
    type: Google.Ads.Googleads.V8.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 5,
    type:
      Google.Ads.Googleads.V8.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 11, type: Google.Protobuf.StringValue
  field :end_date, 12, type: Google.Protobuf.StringValue

  field :cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V8.Common.CpcBidSimulationPointList,
    oneof: 0

  field :percent_cpc_bid_point_list, 13,
    type: Google.Ads.Googleads.V8.Common.PercentCpcBidSimulationPointList,
    oneof: 0
end
