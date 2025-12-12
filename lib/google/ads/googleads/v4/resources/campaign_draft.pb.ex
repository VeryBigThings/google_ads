defmodule Google.Ads.Googleads.V4.Resources.CampaignDraft do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :draft_id, 2, type: Google.Protobuf.Int64Value
  field :base_campaign, 3, type: Google.Protobuf.StringValue
  field :name, 4, type: Google.Protobuf.StringValue
  field :draft_campaign, 5, type: Google.Protobuf.StringValue

  field :status, 6,
    type: Google.Ads.Googleads.V4.Enums.CampaignDraftStatusEnum.CampaignDraftStatus,
    enum: true

  field :has_experiment_running, 7, type: Google.Protobuf.BoolValue
  field :long_running_operation, 8, type: Google.Protobuf.StringValue
end
