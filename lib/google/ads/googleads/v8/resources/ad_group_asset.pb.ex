defmodule Google.Ads.Googleads.V8.Resources.AdGroupAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :ad_group, 2, required: true, type: :string
  field :asset, 3, required: true, type: :string

  field :field_type, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :status, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
