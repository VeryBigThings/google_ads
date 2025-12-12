defmodule Google.Ads.Googleads.V4.Common.TextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headline, 1, type: Google.Protobuf.StringValue
  field :description1, 2, type: Google.Protobuf.StringValue
  field :description2, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ExpandedTextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headline_part1, 1, type: Google.Protobuf.StringValue
  field :headline_part2, 2, type: Google.Protobuf.StringValue
  field :headline_part3, 6, type: Google.Protobuf.StringValue
  field :description, 3, type: Google.Protobuf.StringValue
  field :description2, 7, type: Google.Protobuf.StringValue
  field :path1, 4, type: Google.Protobuf.StringValue
  field :path2, 5, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CallOnlyAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :country_code, 1, type: Google.Protobuf.StringValue
  field :phone_number, 2, type: Google.Protobuf.StringValue
  field :business_name, 3, type: Google.Protobuf.StringValue
  field :headline1, 11, type: Google.Protobuf.StringValue
  field :headline2, 12, type: Google.Protobuf.StringValue
  field :description1, 4, type: Google.Protobuf.StringValue
  field :description2, 5, type: Google.Protobuf.StringValue
  field :call_tracked, 6, type: Google.Protobuf.BoolValue
  field :disable_call_conversion, 7, type: Google.Protobuf.BoolValue
  field :phone_number_verification_url, 8, type: Google.Protobuf.StringValue
  field :conversion_action, 9, type: Google.Protobuf.StringValue

  field :conversion_reporting_state, 10,
    type:
      Google.Ads.Googleads.V4.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.ExpandedDynamicSearchAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :description, 1, type: Google.Protobuf.StringValue
  field :description2, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.ShoppingSmartAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.ShoppingProductAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Common.ShoppingComparisonListingAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headline, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.GmailAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :teaser, 1, type: Google.Ads.Googleads.V4.Common.GmailTeaser
  field :header_image, 2, type: Google.Protobuf.StringValue
  field :marketing_image, 3, type: Google.Protobuf.StringValue
  field :marketing_image_headline, 4, type: Google.Protobuf.StringValue
  field :marketing_image_description, 5, type: Google.Protobuf.StringValue

  field :marketing_image_display_call_to_action, 6,
    type: Google.Ads.Googleads.V4.Common.DisplayCallToAction

  field :product_images, 7, repeated: true, type: Google.Ads.Googleads.V4.Common.ProductImage
  field :product_videos, 8, repeated: true, type: Google.Ads.Googleads.V4.Common.ProductVideo
end

defmodule Google.Ads.Googleads.V4.Common.GmailTeaser do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headline, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
  field :business_name, 3, type: Google.Protobuf.StringValue
  field :logo_image, 4, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.DisplayCallToAction do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :text, 1, type: Google.Protobuf.StringValue
  field :text_color, 2, type: Google.Protobuf.StringValue
  field :url_collection_id, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ProductImage do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :product_image, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
  field :display_call_to_action, 3, type: Google.Ads.Googleads.V4.Common.DisplayCallToAction
end

defmodule Google.Ads.Googleads.V4.Common.ProductVideo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :product_video, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ImageAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :image, 0

  field :pixel_width, 4, type: Google.Protobuf.Int64Value
  field :pixel_height, 5, type: Google.Protobuf.Int64Value
  field :image_url, 6, type: Google.Protobuf.StringValue
  field :preview_pixel_width, 7, type: Google.Protobuf.Int64Value
  field :preview_pixel_height, 8, type: Google.Protobuf.Int64Value
  field :preview_image_url, 9, type: Google.Protobuf.StringValue
  field :mime_type, 10, type: Google.Ads.Googleads.V4.Enums.MimeTypeEnum.MimeType, enum: true
  field :name, 11, type: Google.Protobuf.StringValue
  field :media_file, 1, type: Google.Protobuf.StringValue, oneof: 0
  field :data, 2, type: Google.Protobuf.BytesValue, oneof: 0
  field :ad_id_to_copy_image_from, 3, type: Google.Protobuf.Int64Value, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.VideoBumperInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :companion_banner, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoNonSkippableInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :companion_banner, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoTrueViewInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :action_button_label, 1, type: Google.Protobuf.StringValue
  field :action_headline, 2, type: Google.Protobuf.StringValue
  field :companion_banner, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoOutstreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headline, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoTrueViewDiscoveryAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headline, 1, type: Google.Protobuf.StringValue
  field :description1, 2, type: Google.Protobuf.StringValue
  field :description2, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.VideoAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :format, 0

  field :media_file, 1, type: Google.Protobuf.StringValue
  field :in_stream, 2, type: Google.Ads.Googleads.V4.Common.VideoTrueViewInStreamAdInfo, oneof: 0
  field :bumper, 3, type: Google.Ads.Googleads.V4.Common.VideoBumperInStreamAdInfo, oneof: 0
  field :out_stream, 4, type: Google.Ads.Googleads.V4.Common.VideoOutstreamAdInfo, oneof: 0

  field :non_skippable, 5,
    type: Google.Ads.Googleads.V4.Common.VideoNonSkippableInStreamAdInfo,
    oneof: 0

  field :discovery, 6, type: Google.Ads.Googleads.V4.Common.VideoTrueViewDiscoveryAdInfo, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.ResponsiveSearchAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :path1, 3, type: Google.Protobuf.StringValue
  field :path2, 4, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LegacyResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :short_headline, 1, type: Google.Protobuf.StringValue
  field :long_headline, 2, type: Google.Protobuf.StringValue
  field :description, 3, type: Google.Protobuf.StringValue
  field :business_name, 4, type: Google.Protobuf.StringValue
  field :allow_flexible_color, 5, type: Google.Protobuf.BoolValue
  field :accent_color, 6, type: Google.Protobuf.StringValue
  field :main_color, 7, type: Google.Protobuf.StringValue
  field :call_to_action_text, 8, type: Google.Protobuf.StringValue
  field :logo_image, 9, type: Google.Protobuf.StringValue
  field :square_logo_image, 10, type: Google.Protobuf.StringValue
  field :marketing_image, 11, type: Google.Protobuf.StringValue
  field :square_marketing_image, 12, type: Google.Protobuf.StringValue

  field :format_setting, 13,
    type: Google.Ads.Googleads.V4.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    enum: true

  field :price_prefix, 14, type: Google.Protobuf.StringValue
  field :promo_text, 15, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.AppAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :mandatory_ad_text, 1, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :headlines, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :images, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :youtube_videos, 5, repeated: true, type: Google.Ads.Googleads.V4.Common.AdVideoAsset

  field :html5_media_bundles, 6,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.AdMediaBundleAsset
end

defmodule Google.Ads.Googleads.V4.Common.AppEngagementAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :images, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :videos, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.AdVideoAsset
end

defmodule Google.Ads.Googleads.V4.Common.LegacyAppInstallAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :app_id, 1, type: Google.Protobuf.StringValue

  field :app_store, 2,
    type: Google.Ads.Googleads.V4.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore,
    enum: true

  field :headline, 3, type: Google.Protobuf.StringValue
  field :description1, 4, type: Google.Protobuf.StringValue
  field :description2, 5, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :marketing_images, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset

  field :square_marketing_images, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.AdImageAsset

  field :logo_images, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :square_logo_images, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :headlines, 5, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :long_headline, 6, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 7, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :youtube_videos, 8, repeated: true, type: Google.Ads.Googleads.V4.Common.AdVideoAsset
  field :business_name, 9, type: Google.Protobuf.StringValue
  field :main_color, 10, type: Google.Protobuf.StringValue
  field :accent_color, 11, type: Google.Protobuf.StringValue
  field :allow_flexible_color, 12, type: Google.Protobuf.BoolValue
  field :call_to_action_text, 13, type: Google.Protobuf.StringValue
  field :price_prefix, 14, type: Google.Protobuf.StringValue
  field :promo_text, 15, type: Google.Protobuf.StringValue

  field :format_setting, 16,
    type: Google.Ads.Googleads.V4.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.LocalAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :call_to_actions, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.AdTextAsset
  field :marketing_images, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :logo_images, 5, repeated: true, type: Google.Ads.Googleads.V4.Common.AdImageAsset
  field :videos, 6, repeated: true, type: Google.Ads.Googleads.V4.Common.AdVideoAsset
  field :path1, 7, type: Google.Protobuf.StringValue
  field :path2, 8, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.DisplayUploadAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :media_asset, 0

  field :display_upload_product_type, 1,
    type: Google.Ads.Googleads.V4.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType,
    enum: true

  field :media_bundle, 2, type: Google.Ads.Googleads.V4.Common.AdMediaBundleAsset, oneof: 0
end
