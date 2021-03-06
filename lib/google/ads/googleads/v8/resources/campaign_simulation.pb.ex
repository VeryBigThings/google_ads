defmodule Google.Ads.Googleads.V8.Resources.CampaignSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          point_list: {atom, any},
          resource_name: String.t(),
          campaign_id: integer,
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
    :type,
    :modification_method,
    :start_date,
    :end_date
  ]

  oneof :point_list, 0
  field :resource_name, 1, optional: true, type: :string
  field :campaign_id, 2, optional: true, type: :int64

  field :type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 4,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 5, optional: true, type: :string
  field :end_date, 6, optional: true, type: :string

  field :cpc_bid_point_list, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CpcBidSimulationPointList,
    oneof: 0

  field :target_cpa_point_list, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetCpaSimulationPointList,
    oneof: 0

  field :target_roas_point_list, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetRoasSimulationPointList,
    oneof: 0

  field :target_impression_share_point_list, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetImpressionShareSimulationPointList,
    oneof: 0

  field :budget_point_list, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.BudgetSimulationPointList,
    oneof: 0
end
