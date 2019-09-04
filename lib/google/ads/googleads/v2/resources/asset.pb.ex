defmodule Google.Ads.Googleads.V2.Resources.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset_data: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          type: atom | integer
        }
  defstruct [:asset_data, :resource_name, :id, :name, :type]

  oneof(:asset_data, 0)
  field(:resource_name, 1, type: :string)
  field(:id, 2, type: Google.Protobuf.Int64Value)
  field(:name, 3, type: Google.Protobuf.StringValue)
  field(:type, 4, type: Google.Ads.Googleads.V2.Enums.AssetTypeEnum.AssetType, enum: true)
  field(:youtube_video_asset, 5, type: Google.Ads.Googleads.V2.Common.YoutubeVideoAsset, oneof: 0)
  field(:media_bundle_asset, 6, type: Google.Ads.Googleads.V2.Common.MediaBundleAsset, oneof: 0)
  field(:image_asset, 7, type: Google.Ads.Googleads.V2.Common.ImageAsset, oneof: 0)
  field(:text_asset, 8, type: Google.Ads.Googleads.V2.Common.TextAsset, oneof: 0)
end
