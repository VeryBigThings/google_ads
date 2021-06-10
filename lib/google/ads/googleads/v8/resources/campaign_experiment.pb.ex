defmodule Google.Ads.Googleads.V8.Resources.CampaignExperiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          campaign_draft: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          traffic_split_percent: Google.Protobuf.Int64Value.t() | nil,
          traffic_split_type:
            Google.Ads.Googleads.V8.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType.t(),
          experiment_campaign: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V8.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus.t(),
          long_running_operation: Google.Protobuf.StringValue.t() | nil,
          start_date: Google.Protobuf.StringValue.t() | nil,
          end_date: Google.Protobuf.StringValue.t() | nil
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
  field :id, 13, type: Google.Protobuf.Int64Value
  field :campaign_draft, 14, type: Google.Protobuf.StringValue
  field :name, 15, type: Google.Protobuf.StringValue
  field :description, 16, type: Google.Protobuf.StringValue
  field :traffic_split_percent, 17, type: Google.Protobuf.Int64Value

  field :traffic_split_type, 7,
    type:
      Google.Ads.Googleads.V8.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType,
    enum: true

  field :experiment_campaign, 18, type: Google.Protobuf.StringValue

  field :status, 9,
    type: Google.Ads.Googleads.V8.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus,
    enum: true

  field :long_running_operation, 19, type: Google.Protobuf.StringValue
  field :start_date, 20, type: Google.Protobuf.StringValue
  field :end_date, 21, type: Google.Protobuf.StringValue
end
