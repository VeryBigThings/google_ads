defmodule Google.Ads.Googleads.V7.Resources.AdGroupAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_group, 2, type: :string
  field :asset, 3, type: :string

  field :field_type, 4,
    type: Google.Ads.Googleads.V7.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :status, 5,
    type: Google.Ads.Googleads.V7.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
