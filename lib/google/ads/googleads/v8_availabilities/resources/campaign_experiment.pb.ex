defmodule Google.Ads.Googleads.V8.Resources.CampaignExperiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          campaign_draft: String.t(),
          name: String.t(),
          description: String.t(),
          traffic_split_percent: integer,
          traffic_split_type:
            Google.Ads.Googleads.V8.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType.t(),
          experiment_campaign: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus.t(),
          long_running_operation: String.t(),
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct [
    :resource_name,
    :id,
    :campaign_draft,
    :name,
    :description,
    :traffic_split_percent,
    :traffic_split_type,
    :experiment_campaign,
    :status,
    :long_running_operation,
    :start_date,
    :end_date
  ]

  field :resource_name, 1, type: :string
  field :id, 13, type: :int64
  field :campaign_draft, 14, type: :string
  field :name, 15, type: :string
  field :description, 16, type: :string
  field :traffic_split_percent, 17, type: :int64

  field :traffic_split_type, 7,
    type:
      Google.Ads.Googleads.V8.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType,
    enum: true

  field :experiment_campaign, 18, type: :string

  field :status, 9,
    type: Google.Ads.Googleads.V8.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus,
    enum: true

  field :long_running_operation, 19, type: :string
  field :start_date, 20, type: :string
  field :end_date, 21, type: :string
end
