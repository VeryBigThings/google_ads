defmodule Google.Ads.Googleads.V8.Resources.CampaignAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :campaign, 6, optional: true, type: :string
  field :asset, 7, optional: true, type: :string

  field :field_type, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :status, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
