defmodule Google.Ads.Googleads.V8.Resources.CampaignExperiment do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 13, optional: true, type: :int64
  field :campaign_draft, 14, optional: true, type: :string
  field :name, 15, optional: true, type: :string
  field :description, 16, optional: true, type: :string
  field :traffic_split_percent, 17, optional: true, type: :int64

  field :traffic_split_type, 7,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType,
    enum: true

  field :experiment_campaign, 18, optional: true, type: :string

  field :status, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus,
    enum: true

  field :long_running_operation, 19, optional: true, type: :string
  field :start_date, 20, optional: true, type: :string
  field :end_date, 21, optional: true, type: :string
end
