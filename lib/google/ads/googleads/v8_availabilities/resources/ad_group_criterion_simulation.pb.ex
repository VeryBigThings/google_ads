defmodule Google.Ads.Googleads.V8Availabilities.Resources.AdGroupCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list: {atom, any},
          resource_name: String.t(),
          ad_group_id: integer,
          criterion_id: integer,
          type: Google.Ads.Googleads.V8Availabilities.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V8Availabilities.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: String.t(),
          end_date: String.t()
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
  field :ad_group_id, 9, type: :int64
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

  field :cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V8Availabilities.Common.CpcBidSimulationPointList,
    oneof: 0

  field :percent_cpc_bid_point_list, 13,
    type: Google.Ads.Googleads.V8Availabilities.Common.PercentCpcBidSimulationPointList,
    oneof: 0
end
