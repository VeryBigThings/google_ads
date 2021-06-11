defmodule Google.Ads.Googleads.V8.Resources.CampaignSharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          shared_set: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus.t()
        }

  defstruct [:resource_name, :campaign, :shared_set, :status]

  field :resource_name, 1, required: true, type: :string
  field :campaign, 5, optional: true, type: :string
  field :shared_set, 6, optional: true, type: :string

  field :status, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus,
    enum: true
end
