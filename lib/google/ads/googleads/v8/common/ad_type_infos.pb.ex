defmodule Google.Ads.Googleads.V8.Common.TextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headline, 4, optional: true, type: :string
  field :description1, 5, optional: true, type: :string
  field :description2, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ExpandedTextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headline_part1, 8, optional: true, type: :string
  field :headline_part2, 9, optional: true, type: :string
  field :headline_part3, 10, optional: true, type: :string
  field :description, 11, optional: true, type: :string
  field :description2, 12, optional: true, type: :string
  field :path1, 13, optional: true, type: :string
  field :path2, 14, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ExpandedDynamicSearchAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :description, 3, optional: true, type: :string
  field :description2, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.HotelAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Common.ShoppingSmartAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Common.ShoppingProductAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Common.ShoppingComparisonListingAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headline, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.GmailAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :teaser, 1, optional: true, type: Google.Ads.Googleads.V8.Common.GmailTeaser
  field :header_image, 10, optional: true, type: :string
  field :marketing_image, 11, optional: true, type: :string
  field :marketing_image_headline, 12, optional: true, type: :string
  field :marketing_image_description, 13, optional: true, type: :string

  field :marketing_image_display_call_to_action, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.DisplayCallToAction

  field :product_images, 7, repeated: true, type: Google.Ads.Googleads.V8.Common.ProductImage
  field :product_videos, 8, repeated: true, type: Google.Ads.Googleads.V8.Common.ProductVideo
end

defmodule Google.Ads.Googleads.V8.Common.GmailTeaser do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headline, 5, optional: true, type: :string
  field :description, 6, optional: true, type: :string
  field :business_name, 7, optional: true, type: :string
  field :logo_image, 8, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.DisplayCallToAction do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :text, 5, optional: true, type: :string
  field :text_color, 6, optional: true, type: :string
  field :url_collection_id, 7, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ProductImage do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :product_image, 4, optional: true, type: :string
  field :description, 5, optional: true, type: :string

  field :display_call_to_action, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.DisplayCallToAction
end

defmodule Google.Ads.Googleads.V8.Common.ProductVideo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :product_video, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ImageAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :image, 0
  field :pixel_width, 15, optional: true, type: :int64
  field :pixel_height, 16, optional: true, type: :int64
  field :image_url, 17, optional: true, type: :string
  field :preview_pixel_width, 18, optional: true, type: :int64
  field :preview_pixel_height, 19, optional: true, type: :int64
  field :preview_image_url, 20, optional: true, type: :string

  field :mime_type, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MimeTypeEnum.MimeType,
    enum: true

  field :name, 21, optional: true, type: :string
  field :media_file, 12, optional: true, type: :string, oneof: 0
  field :data, 13, optional: true, type: :bytes, oneof: 0
  field :ad_id_to_copy_image_from, 14, optional: true, type: :int64, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.VideoBumperInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :companion_banner, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoNonSkippableInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :companion_banner, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoTrueViewInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :action_button_label, 4, optional: true, type: :string
  field :action_headline, 5, optional: true, type: :string
  field :companion_banner, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoOutstreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headline, 3, optional: true, type: :string
  field :description, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoTrueViewDiscoveryAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headline, 4, optional: true, type: :string
  field :description1, 5, optional: true, type: :string
  field :description2, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :format, 0
  field :media_file, 7, optional: true, type: :string

  field :in_stream, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.VideoTrueViewInStreamAdInfo,
    oneof: 0

  field :bumper, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.VideoBumperInStreamAdInfo,
    oneof: 0

  field :out_stream, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.VideoOutstreamAdInfo,
    oneof: 0

  field :non_skippable, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.VideoNonSkippableInStreamAdInfo,
    oneof: 0

  field :discovery, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.VideoTrueViewDiscoveryAdInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.VideoResponsiveAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :long_headlines, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :call_to_actions, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :videos, 5, repeated: true, type: Google.Ads.Googleads.V8.Common.AdVideoAsset
  field :companion_banners, 6, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset
end

defmodule Google.Ads.Googleads.V8.Common.ResponsiveSearchAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :path1, 5, optional: true, type: :string
  field :path2, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LegacyResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :short_headline, 16, optional: true, type: :string
  field :long_headline, 17, optional: true, type: :string
  field :description, 18, optional: true, type: :string
  field :business_name, 19, optional: true, type: :string
  field :allow_flexible_color, 20, optional: true, type: :bool
  field :accent_color, 21, optional: true, type: :string
  field :main_color, 22, optional: true, type: :string
  field :call_to_action_text, 23, optional: true, type: :string
  field :logo_image, 24, optional: true, type: :string
  field :square_logo_image, 25, optional: true, type: :string
  field :marketing_image, 26, optional: true, type: :string
  field :square_marketing_image, 27, optional: true, type: :string

  field :format_setting, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    enum: true

  field :price_prefix, 28, optional: true, type: :string
  field :promo_text, 29, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.AppAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :mandatory_ad_text, 1, optional: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :headlines, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :images, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset
  field :youtube_videos, 5, repeated: true, type: Google.Ads.Googleads.V8.Common.AdVideoAsset

  field :html5_media_bundles, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.AdMediaBundleAsset
end

defmodule Google.Ads.Googleads.V8.Common.AppEngagementAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :images, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset
  field :videos, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.AdVideoAsset
end

defmodule Google.Ads.Googleads.V8.Common.LegacyAppInstallAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :app_id, 6, optional: true, type: :string

  field :app_store, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore,
    enum: true

  field :headline, 7, optional: true, type: :string
  field :description1, 8, optional: true, type: :string
  field :description2, 9, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :marketing_images, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset

  field :square_marketing_images, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.AdImageAsset

  field :logo_images, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset
  field :square_logo_images, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset
  field :headlines, 5, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :long_headline, 6, optional: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 7, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :youtube_videos, 8, repeated: true, type: Google.Ads.Googleads.V8.Common.AdVideoAsset
  field :business_name, 17, optional: true, type: :string
  field :main_color, 18, optional: true, type: :string
  field :accent_color, 19, optional: true, type: :string
  field :allow_flexible_color, 20, optional: true, type: :bool
  field :call_to_action_text, 21, optional: true, type: :string
  field :price_prefix, 22, optional: true, type: :string
  field :promo_text, 23, optional: true, type: :string

  field :format_setting, 16,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    enum: true

  field :control_spec, 24,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ResponsiveDisplayAdControlSpec
end

defmodule Google.Ads.Googleads.V8.Common.LocalAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :call_to_actions, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :marketing_images, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset
  field :logo_images, 5, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset
  field :videos, 6, repeated: true, type: Google.Ads.Googleads.V8.Common.AdVideoAsset
  field :path1, 9, optional: true, type: :string
  field :path2, 10, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.DisplayUploadAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :media_asset, 0

  field :display_upload_product_type, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType,
    enum: true

  field :media_bundle, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AdMediaBundleAsset,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.ResponsiveDisplayAdControlSpec do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :enable_asset_enhancements, 1, optional: true, type: :bool
  field :enable_autogen_video, 2, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Common.SmartCampaignAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
end

defmodule Google.Ads.Googleads.V8.Common.CallAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :country_code, 1, optional: true, type: :string
  field :phone_number, 2, optional: true, type: :string
  field :business_name, 3, optional: true, type: :string
  field :headline1, 11, optional: true, type: :string
  field :headline2, 12, optional: true, type: :string
  field :description1, 4, optional: true, type: :string
  field :description2, 5, optional: true, type: :string
  field :call_tracked, 6, optional: true, type: :bool
  field :disable_call_conversion, 7, optional: true, type: :bool
  field :phone_number_verification_url, 8, optional: true, type: :string
  field :conversion_action, 9, optional: true, type: :string

  field :conversion_reporting_state, 10,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true

  field :path1, 13, optional: true, type: :string
  field :path2, 14, optional: true, type: :string
end
