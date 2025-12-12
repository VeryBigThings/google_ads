defmodule Google.Ads.Googleads.V8Availabilities.Resources.CampaignExperiment do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :id, 13, type: :int64
  field :campaign_draft, 14, type: :string
  field :name, 15, type: :string
  field :description, 16, type: :string
  field :traffic_split_percent, 17, type: :int64

  field :traffic_split_type, 7,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType,
    enum: true

  field :experiment_campaign, 18, type: :string

  field :status, 9,
    type: Google.Ads.Googleads.V8Availabilities.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus,
    enum: true

  field :long_running_operation, 19, type: :string
  field :start_date, 20, type: :string
  field :end_date, 21, type: :string
end
