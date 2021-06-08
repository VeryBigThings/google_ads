defmodule Google.Ads.Googleads.V7.Resources.CampaignSharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          shared_set: String.t(),
          status:
            Google.Ads.Googleads.V7.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus.t()
        }
  defstruct [:resource_name, :campaign, :shared_set, :status]

  field :resource_name, 1, type: :string
  field :campaign, 5, type: :string
  field :shared_set, 6, type: :string

  field :status, 2,
    type: Google.Ads.Googleads.V7.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus,
    enum: true
end
