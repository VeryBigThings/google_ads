defmodule Google.Ads.Googleads.V8.Resources.CampaignDraft do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :draft_id, 9, optional: true, type: :int64
  field :base_campaign, 10, optional: true, type: :string
  field :name, 11, optional: true, type: :string
  field :draft_campaign, 12, optional: true, type: :string

  field :status, 6,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.CampaignDraftStatusEnum.CampaignDraftStatus,
    enum: true

  field :has_experiment_running, 13, optional: true, type: :bool
  field :long_running_operation, 14, optional: true, type: :string
end
