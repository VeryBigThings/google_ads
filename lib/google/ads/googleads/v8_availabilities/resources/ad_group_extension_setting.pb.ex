defmodule Google.Ads.Googleads.V8.Resources.AdGroupExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          extension_type: Google.Ads.Googleads.V8.Enums.ExtensionTypeEnum.ExtensionType.t(),
          ad_group: String.t(),
          extension_feed_items: [String.t()],
          device:
            Google.Ads.Googleads.V8.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice.t()
        }

  defstruct [:resource_name, :extension_type, :ad_group, :extension_feed_items, :device]

  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V8.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :ad_group, 6, type: :string
  field :extension_feed_items, 7, repeated: true, type: :string

  field :device, 5,
    type: Google.Ads.Googleads.V8.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
