defmodule Google.Ads.Googleads.V4.Resources.CampaignSharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :campaign, 3, type: Google.Protobuf.StringValue
  field :shared_set, 4, type: Google.Protobuf.StringValue

  field :status, 2,
    type: Google.Ads.Googleads.V4.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus,
    enum: true
end
