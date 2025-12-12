defmodule Google.Ads.Googleads.V8.Resources.CampaignSharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :campaign, 5, optional: true, type: :string
  field :shared_set, 6, optional: true, type: :string

  field :status, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus,
    enum: true
end
