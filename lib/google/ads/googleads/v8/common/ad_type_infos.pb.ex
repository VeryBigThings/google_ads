defmodule Google.Ads.Googleads.V8.Common.TextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          headline: String.t(),
          description1: String.t(),
          description2: String.t()
        }

  defstruct [:headline, :description1, :description2]

  field :headline, 4, optional: true, type: :string
  field :description1, 5, optional: true, type: :string
  field :description2, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ExpandedTextAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          headline_part1: String.t(),
          headline_part2: String.t(),
          headline_part3: String.t(),
          description: String.t(),
          description2: String.t(),
          path1: String.t(),
          path2: String.t()
        }

  defstruct [
    :headline_part1,
    :headline_part2,
    :headline_part3,
    :description,
    :description2,
    :path1,
    :path2
  ]

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

  @type t :: %__MODULE__{
          description: String.t(),
          description2: String.t()
        }

  defstruct [:description, :description2]

  field :description, 3, optional: true, type: :string
  field :description2, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.HotelAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.ShoppingSmartAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.ShoppingProductAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8.Common.ShoppingComparisonListingAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          headline: String.t()
        }

  defstruct [:headline]

  field :headline, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.GmailAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          teaser: Google.Ads.Googleads.V8.Common.GmailTeaser.t() | nil,
          header_image: String.t(),
          marketing_image: String.t(),
          marketing_image_headline: String.t(),
          marketing_image_description: String.t(),
          marketing_image_display_call_to_action:
            Google.Ads.Googleads.V8.Common.DisplayCallToAction.t() | nil,
          product_images: [Google.Ads.Googleads.V8.Common.ProductImage.t()],
          product_videos: [Google.Ads.Googleads.V8.Common.ProductVideo.t()]
        }

  defstruct [
    :teaser,
    :header_image,
    :marketing_image,
    :marketing_image_headline,
    :marketing_image_description,
    :marketing_image_display_call_to_action,
    :product_images,
    :product_videos
  ]

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

  @type t :: %__MODULE__{
          headline: String.t(),
          description: String.t(),
          business_name: String.t(),
          logo_image: String.t()
        }

  defstruct [:headline, :description, :business_name, :logo_image]

  field :headline, 5, optional: true, type: :string
  field :description, 6, optional: true, type: :string
  field :business_name, 7, optional: true, type: :string
  field :logo_image, 8, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.DisplayCallToAction do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          text: String.t(),
          text_color: String.t(),
          url_collection_id: String.t()
        }

  defstruct [:text, :text_color, :url_collection_id]

  field :text, 5, optional: true, type: :string
  field :text_color, 6, optional: true, type: :string
  field :url_collection_id, 7, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ProductImage do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          product_image: String.t(),
          description: String.t(),
          display_call_to_action: Google.Ads.Googleads.V8.Common.DisplayCallToAction.t() | nil
        }

  defstruct [:product_image, :description, :display_call_to_action]

  field :product_image, 4, optional: true, type: :string
  field :description, 5, optional: true, type: :string

  field :display_call_to_action, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.DisplayCallToAction
end

defmodule Google.Ads.Googleads.V8.Common.ProductVideo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          product_video: String.t()
        }

  defstruct [:product_video]

  field :product_video, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ImageAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          image: {atom, any},
          pixel_width: integer,
          pixel_height: integer,
          image_url: String.t(),
          preview_pixel_width: integer,
          preview_pixel_height: integer,
          preview_image_url: String.t(),
          mime_type: Google.Ads.Googleads.V8.Enums.MimeTypeEnum.MimeType.t(),
          name: String.t()
        }

  defstruct [
    :image,
    :pixel_width,
    :pixel_height,
    :image_url,
    :preview_pixel_width,
    :preview_pixel_height,
    :preview_image_url,
    :mime_type,
    :name
  ]

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

  @type t :: %__MODULE__{
          companion_banner: String.t()
        }

  defstruct [:companion_banner]

  field :companion_banner, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoNonSkippableInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          companion_banner: String.t()
        }

  defstruct [:companion_banner]

  field :companion_banner, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoTrueViewInStreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          action_button_label: String.t(),
          action_headline: String.t(),
          companion_banner: String.t()
        }

  defstruct [:action_button_label, :action_headline, :companion_banner]

  field :action_button_label, 4, optional: true, type: :string
  field :action_headline, 5, optional: true, type: :string
  field :companion_banner, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoOutstreamAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          headline: String.t(),
          description: String.t()
        }

  defstruct [:headline, :description]

  field :headline, 3, optional: true, type: :string
  field :description, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoTrueViewDiscoveryAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          headline: String.t(),
          description1: String.t(),
          description2: String.t()
        }

  defstruct [:headline, :description1, :description2]

  field :headline, 4, optional: true, type: :string
  field :description1, 5, optional: true, type: :string
  field :description2, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.VideoAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          format: {atom, any},
          media_file: String.t()
        }

  defstruct [:format, :media_file]

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

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          long_headlines: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          call_to_actions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          videos: [Google.Ads.Googleads.V8.Common.AdVideoAsset.t()],
          companion_banners: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()]
        }

  defstruct [
    :headlines,
    :long_headlines,
    :descriptions,
    :call_to_actions,
    :videos,
    :companion_banners
  ]

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

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          path1: String.t(),
          path2: String.t()
        }

  defstruct [:headlines, :descriptions, :path1, :path2]

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :path1, 5, optional: true, type: :string
  field :path2, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LegacyResponsiveDisplayAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

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
            Google.Ads.Googleads.V8.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting.t(),
          price_prefix: String.t(),
          promo_text: String.t()
        }

  defstruct [
    :short_headline,
    :long_headline,
    :description,
    :business_name,
    :allow_flexible_color,
    :accent_color,
    :main_color,
    :call_to_action_text,
    :logo_image,
    :square_logo_image,
    :marketing_image,
    :square_marketing_image,
    :format_setting,
    :price_prefix,
    :promo_text
  ]

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

  @type t :: %__MODULE__{
          mandatory_ad_text: Google.Ads.Googleads.V8.Common.AdTextAsset.t() | nil,
          headlines: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          images: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()],
          youtube_videos: [Google.Ads.Googleads.V8.Common.AdVideoAsset.t()],
          html5_media_bundles: [Google.Ads.Googleads.V8.Common.AdMediaBundleAsset.t()]
        }

  defstruct [
    :mandatory_ad_text,
    :headlines,
    :descriptions,
    :images,
    :youtube_videos,
    :html5_media_bundles
  ]

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

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          images: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()],
          videos: [Google.Ads.Googleads.V8.Common.AdVideoAsset.t()]
        }

  defstruct [:headlines, :descriptions, :images, :videos]

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :images, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.AdImageAsset
  field :videos, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.AdVideoAsset
end

defmodule Google.Ads.Googleads.V8.Common.LegacyAppInstallAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          app_id: String.t(),
          app_store:
            Google.Ads.Googleads.V8.Enums.LegacyAppInstallAdAppStoreEnum.LegacyAppInstallAdAppStore.t(),
          headline: String.t(),
          description1: String.t(),
          description2: String.t()
        }

  defstruct [:app_id, :app_store, :headline, :description1, :description2]

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

  @type t :: %__MODULE__{
          marketing_images: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()],
          square_marketing_images: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()],
          logo_images: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()],
          square_logo_images: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()],
          headlines: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          long_headline: Google.Ads.Googleads.V8.Common.AdTextAsset.t() | nil,
          descriptions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          youtube_videos: [Google.Ads.Googleads.V8.Common.AdVideoAsset.t()],
          business_name: String.t(),
          main_color: String.t(),
          accent_color: String.t(),
          allow_flexible_color: boolean,
          call_to_action_text: String.t(),
          price_prefix: String.t(),
          promo_text: String.t(),
          format_setting:
            Google.Ads.Googleads.V8.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting.t(),
          control_spec: Google.Ads.Googleads.V8.Common.ResponsiveDisplayAdControlSpec.t() | nil
        }

  defstruct [
    :marketing_images,
    :square_marketing_images,
    :logo_images,
    :square_logo_images,
    :headlines,
    :long_headline,
    :descriptions,
    :youtube_videos,
    :business_name,
    :main_color,
    :accent_color,
    :allow_flexible_color,
    :call_to_action_text,
    :price_prefix,
    :promo_text,
    :format_setting,
    :control_spec
  ]

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

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          call_to_actions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          marketing_images: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()],
          logo_images: [Google.Ads.Googleads.V8.Common.AdImageAsset.t()],
          videos: [Google.Ads.Googleads.V8.Common.AdVideoAsset.t()],
          path1: String.t(),
          path2: String.t()
        }

  defstruct [
    :headlines,
    :descriptions,
    :call_to_actions,
    :marketing_images,
    :logo_images,
    :videos,
    :path1,
    :path2
  ]

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

  @type t :: %__MODULE__{
          media_asset: {atom, any},
          display_upload_product_type:
            Google.Ads.Googleads.V8.Enums.DisplayUploadProductTypeEnum.DisplayUploadProductType.t()
        }

  defstruct [:media_asset, :display_upload_product_type]

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

  @type t :: %__MODULE__{
          enable_asset_enhancements: boolean,
          enable_autogen_video: boolean
        }

  defstruct [:enable_asset_enhancements, :enable_autogen_video]

  field :enable_asset_enhancements, 1, optional: true, type: :bool
  field :enable_autogen_video, 2, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Common.SmartCampaignAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          headlines: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()],
          descriptions: [Google.Ads.Googleads.V8.Common.AdTextAsset.t()]
        }

  defstruct [:headlines, :descriptions]

  field :headlines, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
  field :descriptions, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.AdTextAsset
end

defmodule Google.Ads.Googleads.V8.Common.CallAdInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

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
            Google.Ads.Googleads.V8.Enums.CallConversionReportingStateEnum.CallConversionReportingState.t(),
          path1: String.t(),
          path2: String.t()
        }

  defstruct [
    :country_code,
    :phone_number,
    :business_name,
    :headline1,
    :headline2,
    :description1,
    :description2,
    :call_tracked,
    :disable_call_conversion,
    :phone_number_verification_url,
    :conversion_action,
    :conversion_reporting_state,
    :path1,
    :path2
  ]

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
