defmodule Google.Ads.Googleads.V11.Resources.CampaignExperiment do
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
            Google.Ads.Googleads.V11.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType.t(),
          experiment_campaign: String.t(),
          status:
            Google.Ads.Googleads.V11.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus.t(),
          long_running_operation: String.t(),
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            campaign_draft: "",
            name: "",
            description: "",
            traffic_split_percent: 0,
            traffic_split_type: :UNSPECIFIED,
            experiment_campaign: "",
            status: :UNSPECIFIED,
            long_running_operation: "",
            start_date: "",
            end_date: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 13, type: :int64, deprecated: false
  field :campaign_draft, 14, type: :string, json_name: "campaignDraft", deprecated: false
  field :name, 15, type: :string
  field :description, 16, type: :string

  field :traffic_split_percent, 17,
    type: :int64,
    json_name: "trafficSplitPercent",
    deprecated: false

  field :traffic_split_type, 7,
    type:
      Google.Ads.Googleads.V11.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType,
    json_name: "trafficSplitType",
    enum: true,
    deprecated: false

  field :experiment_campaign, 18,
    type: :string,
    json_name: "experimentCampaign",
    deprecated: false

  field :status, 9,
    type: Google.Ads.Googleads.V11.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus,
    enum: true,
    deprecated: false

  field :long_running_operation, 19,
    type: :string,
    json_name: "longRunningOperation",
    deprecated: false

  field :start_date, 20, type: :string, json_name: "startDate"
  field :end_date, 21, type: :string, json_name: "endDate"
end
