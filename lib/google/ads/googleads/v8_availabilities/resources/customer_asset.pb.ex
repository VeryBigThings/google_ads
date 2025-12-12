defmodule Google.Ads.Googleads.V8Availabilities.Resources.CustomerAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :asset, 2, type: :string

  field :field_type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :status, 4,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
