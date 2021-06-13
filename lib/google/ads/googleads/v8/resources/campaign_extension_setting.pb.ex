defmodule Google.Ads.Googleads.V8.Resources.CampaignExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          extension_type: Google.Ads.Googleads.V8.Enums.ExtensionTypeEnum.ExtensionType.t(),
          campaign: String.t(),
          extension_feed_items: [String.t()],
          device:
            Google.Ads.Googleads.V8.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice.t()
        }

  defstruct [:resource_name, :extension_type, :campaign, :extension_feed_items, :device]

  field :resource_name, 1, optional: true, type: :string

  field :extension_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :campaign, 6, optional: true, type: :string
  field :extension_feed_items, 7, repeated: true, type: :string

  field :device, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
