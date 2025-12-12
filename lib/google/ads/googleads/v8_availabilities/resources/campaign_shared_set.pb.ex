defmodule Google.Ads.Googleads.V8Availabilities.Resources.CampaignSharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :campaign, 5, type: :string
  field :shared_set, 6, type: :string

  field :status, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus,
    enum: true
end
