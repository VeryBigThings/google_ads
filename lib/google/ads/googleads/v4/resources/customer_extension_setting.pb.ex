defmodule Google.Ads.Googleads.V4.Resources.CustomerExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V4.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :extension_feed_items, 3, repeated: true, type: Google.Protobuf.StringValue

  field :device, 4,
    type: Google.Ads.Googleads.V4.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
