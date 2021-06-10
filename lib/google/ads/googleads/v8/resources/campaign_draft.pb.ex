defmodule Google.Ads.Googleads.V8.Resources.CampaignDraft do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          draft_id: Google.Protobuf.Int64Value.t() | nil,
          base_campaign: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          draft_campaign: Google.Protobuf.StringValue.t() | nil,
          status: Google.Ads.Googleads.V8.Enums.CampaignDraftStatusEnum.CampaignDraftStatus.t(),
          has_experiment_running: Google.Protobuf.BoolValue.t() | nil,
          long_running_operation: Google.Protobuf.StringValue.t() | nil
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
  field :draft_id, 9, type: Google.Protobuf.Int64Value
  field :base_campaign, 10, type: Google.Protobuf.StringValue
  field :name, 11, type: Google.Protobuf.StringValue
  field :draft_campaign, 12, type: Google.Protobuf.StringValue

  field :status, 6,
    type: Google.Ads.Googleads.V8.Enums.CampaignDraftStatusEnum.CampaignDraftStatus,
    enum: true

  field :has_experiment_running, 13, type: Google.Protobuf.BoolValue
  field :long_running_operation, 14, type: Google.Protobuf.StringValue
end
