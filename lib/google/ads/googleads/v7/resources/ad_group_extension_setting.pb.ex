defmodule Google.Ads.Googleads.V7.Resources.AdGroupExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V7.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :ad_group, 6, type: :string
  field :extension_feed_items, 7, repeated: true, type: :string

  field :device, 5,
    type: Google.Ads.Googleads.V7.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
