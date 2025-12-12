defmodule Google.Ads.Googleads.V8Availabilities.Resources.CampaignExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :campaign, 6, type: :string
  field :extension_feed_items, 7, repeated: true, type: :string

  field :device, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
