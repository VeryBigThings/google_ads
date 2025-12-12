defmodule Google.Ads.Googleads.V8.Resources.CustomerExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :extension_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :extension_feed_items, 5, repeated: true, type: :string

  field :device, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
