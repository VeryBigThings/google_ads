defmodule Google.Ads.Googleads.V10.Common.TextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: String.t(),
          description1: String.t(),
          description2: String.t()
        }

  defstruct headline: "",
            description1: "",
            description2: ""

  field :headline, 4, type: :string
  field :description1, 5, type: :string
  field :description2, 6, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.ExpandedTextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline_part1: String.t(),
          headline_part2: String.t(),
          headline_part3: String.t(),
          description: String.t(),
          description2: String.t(),
          path1: String.t(),
          path2: String.t()
        }

  defstruct headline_part1: "",
            headline_part2: "",
            headline_part3: "",
            description: "",
            description2: "",
            path1: "",
            path2: ""

  field :headline_part1, 8, type: :string, json_name: "headlinePart1"
  field :headline_part2, 9, type: :string, json_name: "headlinePart2"
  field :headline_part3, 10, type: :string, json_name: "headlinePart3"
  field :description, 11, type: :string
  field :description2, 12, type: :string
  field :path1, 13, type: :string
  field :path2, 14, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.ExpandedDynamicSearchAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          description2: String.t()
        }

  defstruct description: "",
            description2: ""

  field :description, 3, type: :string
  field :description2, 4, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.HotelAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Common.ShoppingSmartAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Common.ShoppingProductAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Common.ShoppingComparisonListingAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: String.t()
        }

  defstruct headline: ""

  field :headline, 2, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.GmailAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          teaser: Google.Ads.Googleads.V10.Common.GmailTeaser.t() | nil,
          header_image: String.t(),
          marketing_image: String.t(),
          marketing_image_headline: String.t(),
          marketing_image_description: String.t(),
          marketing_image_display_call_to_action:
            Google.Ads.Googleads.V10.Common.DisplayCallToAction.t() | nil,
          product_images: [Google.Ads.Googleads.V10.Common.ProductImage.t()],
          product_videos: [Google.Ads.Googleads.V10.Common.ProductVideo.t()]
        }

  defstruct teaser: nil,
            header_image: "",
            marketing_image: "",
            marketing_image_headline: "",
            marketing_image_description: "",
            marketing_image_display_call_to_action: nil,
            product_images: [],
            product_videos: []

  field :teaser, 1, type: Google.Ads.Googleads.V10.Common.GmailTeaser
  field :header_image, 10, type: :string, json_name: "headerImage"
  field :marketing_image, 11, type: :string, json_name: "marketingImage"
  field :marketing_image_headline, 12, type: :string, json_name: "marketingImageHeadline"
  field :marketing_image_description, 13, type: :string, json_name: "marketingImageDescription"

  field :marketing_image_display_call_to_action, 6,
    type: Google.Ads.Googleads.V10.Common.DisplayCallToAction,
    json_name: "marketingImageDisplayCallToAction"

  field :product_images, 7,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.ProductImage,
    json_name: "productImages"

  field :product_videos, 8,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.ProductVideo,
    json_name: "productVideos"
end
defmodule Google.Ads.Googleads.V10.Common.GmailTeaser do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: String.t(),
          description: String.t(),
          business_name: String.t(),
          logo_image: String.t()
        }

  defstruct headline: "",
            description: "",
            business_name: "",
            logo_image: ""

  field :headline, 5, type: :string
  field :description, 6, type: :string
  field :business_name, 7, type: :string, json_name: "businessName"
  field :logo_image, 8, type: :string, json_name: "logoImage"
end
defmodule Google.Ads.Googleads.V10.Common.DisplayCallToAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          text_color: String.t(),
          url_collection_id: String.t()
        }

  defstruct text: "",
            text_color: "",
            url_collection_id: ""

  field :text, 5, type: :string
  field :text_color, 6, type: :string, json_name: "textColor"
  field :url_collection_id, 7, type: :string, json_name: "urlCollectionId"
end
defmodule Google.Ads.Googleads.V10.Common.ProductImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_image: String.t(),
          description: String.t(),
          display_call_to_action: Google.Ads.Googleads.V10.Common.DisplayCallToAction.t() | nil
        }

  defstruct product_image: "",
            description: "",
            display_call_to_action: nil

  field :product_image, 4, type: :string, json_name: "productImage"
  field :description, 5, type: :string

  field :display_call_to_action, 3,
    type: Google.Ads.Googleads.V10.Common.DisplayCallToAction,
    json_name: "displayCallToAction"
end
defmodule Google.Ads.Googleads.V10.Common.ProductVideo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_video: String.t()
        }

  defstruct product_video: ""

  field :product_video, 2, type: :string, json_name: "productVideo"
end
defmodule Google.Ads.Googleads.V10.Common.ImageAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image:
            {:media_file, String.t()} | {:data, binary} | {:ad_id_to_copy_image_from, integer},
          pixel_width: integer,
          pixel_height: integer,
          image_url: String.t(),
          preview_pixel_width: integer,
          preview_pixel_height: integer,
          preview_image_url: String.t(),
          mime_type: Google.Ads.Googleads.V10.Enums.MimeTypeEnum.MimeType.t(),
          name: String.t()
        }

  defstruct image: nil,
            pixel_width: 0,
            pixel_height: 0,
            image_url: "",
            preview_pixel_width: 0,
            preview_pixel_height: 0,
            preview_image_url: "",
            mime_type: :UNSPECIFIED,
            name: ""

  oneof :image, 0

  field :pixel_width, 15, type: :int64, json_name: "pixelWidth"
  field :pixel_height, 16, type: :int64, json_name: "pixelHeight"
  field :image_url, 17, type: :string, json_name: "imageUrl"
  field :preview_pixel_width, 18, type: :int64, json_name: "previewPixelWidth"
  field :preview_pixel_height, 19, type: :int64, json_name: "previewPixelHeight"
  field :preview_image_url, 20, type: :string, json_name: "previewImageUrl"

  field :mime_type, 10,
    type: Google.Ads.Googleads.V10.Enums.MimeTypeEnum.MimeType,
    json_name: "mimeType",
    enum: true

  field :name, 21, type: :string
  field :media_file, 12, type: :string, json_name: "mediaFile", oneof: 0
  field :data, 13, type: :bytes, oneof: 0
  field :ad_id_to_copy_image_from, 14, type: :int64, json_name: "adIdToCopyImageFrom", oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.VideoBumperInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          companion_banner: Google.Ads.Googleads.V10.Common.AdImageAsset.t() | nil
        }

  defstruct companion_banner: nil

  field :companion_banner, 3,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "companionBanner"
end
defmodule Google.Ads.Googleads.V10.Common.VideoNonSkippableInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          companion_banner: Google.Ads.Googleads.V10.Common.AdImageAsset.t() | nil,
          action_button_label: String.t(),
          action_headline: String.t()
        }

  defstruct companion_banner: nil,
            action_button_label: "",
            action_headline: ""

  field :companion_banner, 5,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "companionBanner"

  field :action_button_label, 3, type: :string, json_name: "actionButtonLabel"
  field :action_headline, 4, type: :string, json_name: "actionHeadline"
end
defmodule Google.Ads.Googleads.V10.Common.VideoTrueViewInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_button_label: String.t(),
          action_headline: String.t(),
          companion_banner: Google.Ads.Googleads.V10.Common.AdImageAsset.t() | nil
        }

  defstruct action_button_label: "",
            action_headline: "",
            companion_banner: nil

  field :action_button_label, 4, type: :string, json_name: "actionButtonLabel"
  field :action_headline, 5, type: :string, json_name: "actionHeadline"

  field :companion_banner, 7,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "companionBanner"
end
defmodule Google.Ads.Googleads.V10.Common.VideoOutstreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: String.t(),
          description: String.t()
        }

  defstruct headline: "",
            description: ""

  field :headline, 3, type: :string
  field :description, 4, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.InFeedVideoAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headline: String.t(),
          description1: String.t(),
          description2: String.t(),
          thumbnail: Google.Ads.Googleads.V10.Enums.VideoThumbnailEnum.VideoThumbnail.t()
        }

  defstruct headline: "",
            description1: "",
            description2: "",
            thumbnail: :UNSPECIFIED

  field :headline, 1, type: :string
  field :description1, 2, type: :string
  field :description2, 3, type: :string

  field :thumbnail, 4,
    type: Google.Ads.Googleads.V10.Enums.VideoThumbnailEnum.VideoThumbnail,
    enum: true
end
defmodule Google.Ads.Googleads.V10.Common.VideoAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format:
            {:in_stream, Google.Ads.Googleads.V10.Common.VideoTrueViewInStreamAdInfo.t() | nil}
            | {:bumper, Google.Ads.Googleads.V10.Common.VideoBumperInStreamAdInfo.t() | nil}
            | {:out_stream, Google.Ads.Googleads.V10.Common.VideoOutstreamAdInfo.t() | nil}
            | {:non_skippable,
               Google.Ads.Googleads.V10.Common.VideoNonSkippableInStreamAdInfo.t() | nil}
            | {:in_feed, Google.Ads.Googleads.V10.Common.InFeedVideoAdInfo.t() | nil},
          video: Google.Ads.Googleads.V10.Common.AdVideoAsset.t() | nil
        }

  defstruct format: nil,
            video: nil

  oneof :format, 0

  field :video, 8, type: Google.Ads.Googleads.V10.Common.AdVideoAsset

  field :in_stream, 2,
    type: Google.Ads.Googleads.V10.Common.VideoTrueViewInStreamAdInfo,
    json_name: "inStream",
    oneof: 0

  field :bumper, 3, type: Google.Ads.Googleads.V10.Common.VideoBumperInStreamAdInfo, oneof: 0

  field :out_stream, 4,
    type: Google.Ads.Googleads.V10.Common.VideoOutstreamAdInfo,
    json_name: "outStream",
    oneof: 0

  field :non_skippable, 5,
    type: Google.Ads.Googleads.V10.Common.VideoNonSkippableInStreamAdInfo,
    json_name: "nonSkippable",
    oneof: 0

  field :in_feed, 9,
    type: Google.Ads.Googleads.V10.Common.InFeedVideoAdInfo,
    json_name: "inFeed",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.VideoResponsiveAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          long_headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          call_to_actions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          videos: [Google.Ads.Googleads.V10.Common.AdVideoAsset.t()],
          companion_banners: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()]
        }

  defstruct headlines: [],
            long_headlines: [],
            descriptions: [],
            call_to_actions: [],
            videos: [],
            companion_banners: []

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset

  field :long_headlines, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdTextAsset,
    json_name: "longHeadlines"

  field :descriptions, 3, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset

  field :call_to_actions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdTextAsset,
    json_name: "callToActions"

  field :videos, 5, repeated: true, type: Google.Ads.Googleads.V10.Common.AdVideoAsset

  field :companion_banners, 6,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "companionBanners"
end
defmodule Google.Ads.Googleads.V10.Common.ResponsiveSearchAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          path1: String.t(),
          path2: String.t()
        }

  defstruct headlines: [],
            descriptions: [],
            path1: "",
            path2: ""

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :path1, 5, type: :string
  field :path2, 6, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.LegacyResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          short_headline: String.t(),
          long_headline: String.t(),
          description: String.t(),
          business_name: String.t(),
          allow_flexible_color: boolean,
          accent_color: String.t(),
          main_color: String.t(),
          call_to_action_text: String.t(),
          logo_image: String.t(),
          square_logo_image: String.t(),
          marketing_image: String.t(),
          square_marketing_image: String.t(),
          format_setting:
            Google.Ads.Googleads.V10.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting.t(),
          price_prefix: String.t(),
          promo_text: String.t()
        }

  defstruct short_headline: "",
            long_headline: "",
            description: "",
            business_name: "",
            allow_flexible_color: false,
            accent_color: "",
            main_color: "",
            call_to_action_text: "",
            logo_image: "",
            square_logo_image: "",
            marketing_image: "",
            square_marketing_image: "",
            format_setting: :UNSPECIFIED,
            price_prefix: "",
            promo_text: ""

  field :short_headline, 16, type: :string, json_name: "shortHeadline"
  field :long_headline, 17, type: :string, json_name: "longHeadline"
  field :description, 18, type: :string
  field :business_name, 19, type: :string, json_name: "businessName"
  field :allow_flexible_color, 20, type: :bool, json_name: "allowFlexibleColor"
  field :accent_color, 21, type: :string, json_name: "accentColor"
  field :main_color, 22, type: :string, json_name: "mainColor"
  field :call_to_action_text, 23, type: :string, json_name: "callToActionText"
  field :logo_image, 24, type: :string, json_name: "logoImage"
  field :square_logo_image, 25, type: :string, json_name: "squareLogoImage"
  field :marketing_image, 26, type: :string, json_name: "marketingImage"
  field :square_marketing_image, 27, type: :string, json_name: "squareMarketingImage"

  field :format_setting, 13,
    type: Google.Ads.Googleads.V10.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    json_name: "formatSetting",
    enum: true

  field :price_prefix, 28, type: :string, json_name: "pricePrefix"
  field :promo_text, 29, type: :string, json_name: "promoText"
end
defmodule Google.Ads.Googleads.V10.Common.AppAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mandatory_ad_text: Google.Ads.Googleads.V10.Common.AdTextAsset.t() | nil,
          headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          youtube_videos: [Google.Ads.Googleads.V10.Common.AdVideoAsset.t()],
          html5_media_bundles: [Google.Ads.Googleads.V10.Common.AdMediaBundleAsset.t()]
        }

  defstruct mandatory_ad_text: nil,
            headlines: [],
            descriptions: [],
            images: [],
            youtube_videos: [],
            html5_media_bundles: []

  field :mandatory_ad_text, 1,
    type: Google.Ads.Googleads.V10.Common.AdTextAsset,
    json_name: "mandatoryAdText"

  field :headlines, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :descriptions, 3, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :images, 4, repeated: true, type: Google.Ads.Googleads.V10.Common.AdImageAsset

  field :youtube_videos, 5,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdVideoAsset,
    json_name: "youtubeVideos"

  field :html5_media_bundles, 6,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdMediaBundleAsset,
    json_name: "html5MediaBundles"
end
defmodule Google.Ads.Googleads.V10.Common.AppEngagementAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          videos: [Google.Ads.Googleads.V10.Common.AdVideoAsset.t()]
        }

  defstruct headlines: [],
            descriptions: [],
            images: [],
            videos: []

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :images, 3, repeated: true, type: Google.Ads.Googleads.V10.Common.AdImageAsset
  field :videos, 4, repeated: true, type: Google.Ads.Googleads.V10.Common.AdVideoAsset
end
defmodule Google.Ads.Googleads.V10.Common.AppPreRegistrationAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          youtube_videos: [Google.Ads.Googleads.V10.Common.AdVideoAsset.t()]
        }

  defstruct headlines: [],
            descriptions: [],
            images: [],
            youtube_videos: []

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :images, 3, repeated: true, type: Google.Ads.Googleads.V10.Common.AdImageAsset

  field :youtube_videos, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdVideoAsset,
    json_name: "youtubeVideos"
end
defmodule Google.Ads.Googleads.V10.Common.LegacyAppInstallAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: String.t(),
          app_store:
            Google.Ads.Googleads.V10.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore.t(),
          headline: String.t(),
          description1: String.t(),
          description2: String.t()
        }

  defstruct app_id: "",
            app_store: :UNSPECIFIED,
            headline: "",
            description1: "",
            description2: ""

  field :app_id, 6, type: :string, json_name: "appId"

  field :app_store, 2,
    type:
      Google.Ads.Googleads.V10.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore,
    json_name: "appStore",
    enum: true

  field :headline, 7, type: :string
  field :description1, 8, type: :string
  field :description2, 9, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.ResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          marketing_images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          square_marketing_images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          logo_images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          square_logo_images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          long_headline: Google.Ads.Googleads.V10.Common.AdTextAsset.t() | nil,
          descriptions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          youtube_videos: [Google.Ads.Googleads.V10.Common.AdVideoAsset.t()],
          business_name: String.t(),
          main_color: String.t(),
          accent_color: String.t(),
          allow_flexible_color: boolean,
          call_to_action_text: String.t(),
          price_prefix: String.t(),
          promo_text: String.t(),
          format_setting:
            Google.Ads.Googleads.V10.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting.t(),
          control_spec: Google.Ads.Googleads.V10.Common.ResponsiveDisplayAdControlSpec.t() | nil
        }

  defstruct marketing_images: [],
            square_marketing_images: [],
            logo_images: [],
            square_logo_images: [],
            headlines: [],
            long_headline: nil,
            descriptions: [],
            youtube_videos: [],
            business_name: "",
            main_color: "",
            accent_color: "",
            allow_flexible_color: false,
            call_to_action_text: "",
            price_prefix: "",
            promo_text: "",
            format_setting: :UNSPECIFIED,
            control_spec: nil

  field :marketing_images, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "marketingImages"

  field :square_marketing_images, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "squareMarketingImages"

  field :logo_images, 3,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "logoImages"

  field :square_logo_images, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "squareLogoImages"

  field :headlines, 5, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset

  field :long_headline, 6,
    type: Google.Ads.Googleads.V10.Common.AdTextAsset,
    json_name: "longHeadline"

  field :descriptions, 7, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset

  field :youtube_videos, 8,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdVideoAsset,
    json_name: "youtubeVideos"

  field :business_name, 17, type: :string, json_name: "businessName"
  field :main_color, 18, type: :string, json_name: "mainColor"
  field :accent_color, 19, type: :string, json_name: "accentColor"
  field :allow_flexible_color, 20, type: :bool, json_name: "allowFlexibleColor"
  field :call_to_action_text, 21, type: :string, json_name: "callToActionText"
  field :price_prefix, 22, type: :string, json_name: "pricePrefix"
  field :promo_text, 23, type: :string, json_name: "promoText"

  field :format_setting, 16,
    type: Google.Ads.Googleads.V10.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting,
    json_name: "formatSetting",
    enum: true

  field :control_spec, 24,
    type: Google.Ads.Googleads.V10.Common.ResponsiveDisplayAdControlSpec,
    json_name: "controlSpec"
end
defmodule Google.Ads.Googleads.V10.Common.LocalAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          call_to_actions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          marketing_images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          logo_images: [Google.Ads.Googleads.V10.Common.AdImageAsset.t()],
          videos: [Google.Ads.Googleads.V10.Common.AdVideoAsset.t()],
          path1: String.t(),
          path2: String.t()
        }

  defstruct headlines: [],
            descriptions: [],
            call_to_actions: [],
            marketing_images: [],
            logo_images: [],
            videos: [],
            path1: "",
            path2: ""

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset

  field :call_to_actions, 3,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdTextAsset,
    json_name: "callToActions"

  field :marketing_images, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "marketingImages"

  field :logo_images, 5,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdImageAsset,
    json_name: "logoImages"

  field :videos, 6, repeated: true, type: Google.Ads.Googleads.V10.Common.AdVideoAsset
  field :path1, 9, type: :string
  field :path2, 10, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.DisplayUploadAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          media_asset:
            {:media_bundle, Google.Ads.Googleads.V10.Common.AdMediaBundleAsset.t() | nil},
          display_upload_product_type:
            Google.Ads.Googleads.V10.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType.t()
        }

  defstruct media_asset: nil,
            display_upload_product_type: :UNSPECIFIED

  oneof :media_asset, 0

  field :display_upload_product_type, 1,
    type: Google.Ads.Googleads.V10.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType,
    json_name: "displayUploadProductType",
    enum: true

  field :media_bundle, 2,
    type: Google.Ads.Googleads.V10.Common.AdMediaBundleAsset,
    json_name: "mediaBundle",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.ResponsiveDisplayAdControlSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_asset_enhancements: boolean,
          enable_autogen_video: boolean
        }

  defstruct enable_asset_enhancements: false,
            enable_autogen_video: false

  field :enable_asset_enhancements, 1, type: :bool, json_name: "enableAssetEnhancements"
  field :enable_autogen_video, 2, type: :bool, json_name: "enableAutogenVideo"
end
defmodule Google.Ads.Googleads.V10.Common.SmartCampaignAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V10.Common.AdTextAsset.t()]
        }

  defstruct headlines: [],
            descriptions: []

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.AdTextAsset
end
defmodule Google.Ads.Googleads.V10.Common.CallAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_code: String.t(),
          phone_number: String.t(),
          business_name: String.t(),
          headline1: String.t(),
          headline2: String.t(),
          description1: String.t(),
          description2: String.t(),
          call_tracked: boolean,
          disable_call_conversion: boolean,
          phone_number_verification_url: String.t(),
          conversion_action: String.t(),
          conversion_reporting_state:
            Google.Ads.Googleads.V10.Enums.CallConversionReportingStateEnum.CallConversionReportingState.t(),
          path1: String.t(),
          path2: String.t()
        }

  defstruct country_code: "",
            phone_number: "",
            business_name: "",
            headline1: "",
            headline2: "",
            description1: "",
            description2: "",
            call_tracked: false,
            disable_call_conversion: false,
            phone_number_verification_url: "",
            conversion_action: "",
            conversion_reporting_state: :UNSPECIFIED,
            path1: "",
            path2: ""

  field :country_code, 1, type: :string, json_name: "countryCode"
  field :phone_number, 2, type: :string, json_name: "phoneNumber"
  field :business_name, 3, type: :string, json_name: "businessName"
  field :headline1, 11, type: :string
  field :headline2, 12, type: :string
  field :description1, 4, type: :string
  field :description2, 5, type: :string
  field :call_tracked, 6, type: :bool, json_name: "callTracked"
  field :disable_call_conversion, 7, type: :bool, json_name: "disableCallConversion"
  field :phone_number_verification_url, 8, type: :string, json_name: "phoneNumberVerificationUrl"
  field :conversion_action, 9, type: :string, json_name: "conversionAction"

  field :conversion_reporting_state, 10,
    type:
      Google.Ads.Googleads.V10.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    json_name: "conversionReportingState",
    enum: true

  field :path1, 13, type: :string
  field :path2, 14, type: :string
end
