defmodule Google.Ads.Googleads.V4.Resources.CampaignExtensionSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :extension_type, 2,
    type: Google.Ads.Googleads.V4.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :campaign, 3, type: Google.Protobuf.StringValue
  field :extension_feed_items, 4, repeated: true, type: Google.Protobuf.StringValue

  field :device, 5,
    type: Google.Ads.Googleads.V4.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice,
    enum: true
end
