defmodule Google.Ads.Googleads.V7.Resources.CustomerExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V7.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :extension_feed_items, 5, repeated: true, type: :string

  field :device, 4,
    type: Google.Ads.Googleads.V7.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
