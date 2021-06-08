defmodule Google.Ads.Googleads.V7.Resources.CampaignDraft do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          draft_id: integer,
          base_campaign: String.t(),
          name: String.t(),
          draft_campaign: String.t(),
          status: Google.Ads.Googleads.V7.Enums.CampaignDraftStatusEnum.CampaignDraftStatus.t(),
          has_experiment_running: boolean,
          long_running_operation: String.t()
        }
  defstruct [
    :resource_name,
    :draft_id,
    :base_campaign,
    :name,
    :draft_campaign,
    :status,
    :has_experiment_running,
    :long_running_operation
  ]

  field :resource_name, 1, type: :string
  field :draft_id, 9, type: :int64
  field :base_campaign, 10, type: :string
  field :name, 11, type: :string
  field :draft_campaign, 12, type: :string

  field :status, 6,
    type: Google.Ads.Googleads.V7.Enums.CampaignDraftStatusEnum.CampaignDraftStatus,
    enum: true

  field :has_experiment_running, 13, type: :bool
  field :long_running_operation, 14, type: :string
end
