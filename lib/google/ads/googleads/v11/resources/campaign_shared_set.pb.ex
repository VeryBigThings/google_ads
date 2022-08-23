defmodule Google.Ads.Googleads.V11.Resources.CampaignSharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          shared_set: String.t(),
          status:
            Google.Ads.Googleads.V11.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus.t()
        }

  defstruct resource_name: "",
            campaign: "",
            shared_set: "",
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 5, type: :string, deprecated: false
  field :shared_set, 6, type: :string, json_name: "sharedSet", deprecated: false

  field :status, 2,
    type: Google.Ads.Googleads.V11.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus,
    enum: true,
    deprecated: false
end
