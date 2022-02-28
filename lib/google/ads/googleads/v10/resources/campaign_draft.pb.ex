defmodule Google.Ads.Googleads.V10.Resources.CampaignDraft do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          draft_id: integer,
          base_campaign: String.t(),
          name: String.t(),
          draft_campaign: String.t(),
          status: Google.Ads.Googleads.V10.Enums.CampaignDraftStatusEnum.CampaignDraftStatus.t(),
          has_experiment_running: boolean,
          long_running_operation: String.t()
        }

  defstruct resource_name: "",
            draft_id: 0,
            base_campaign: "",
            name: "",
            draft_campaign: "",
            status: :UNSPECIFIED,
            has_experiment_running: false,
            long_running_operation: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :draft_id, 9, type: :int64, json_name: "draftId", deprecated: false
  field :base_campaign, 10, type: :string, json_name: "baseCampaign", deprecated: false
  field :name, 11, type: :string
  field :draft_campaign, 12, type: :string, json_name: "draftCampaign", deprecated: false

  field :status, 6,
    type: Google.Ads.Googleads.V10.Enums.CampaignDraftStatusEnum.CampaignDraftStatus,
    enum: true,
    deprecated: false

  field :has_experiment_running, 13,
    type: :bool,
    json_name: "hasExperimentRunning",
    deprecated: false

  field :long_running_operation, 14,
    type: :string,
    json_name: "longRunningOperation",
    deprecated: false
end
