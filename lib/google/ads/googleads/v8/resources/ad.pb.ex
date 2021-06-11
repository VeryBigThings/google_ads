defmodule Google.Ads.Googleads.V8.Resources.Ad do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          ad_data: {atom, any},
          resource_name: String.t(),
          id: integer,
          final_urls: [String.t()],
          final_app_urls: [Google.Ads.Googleads.V8.Common.FinalAppUrl.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: String.t(),
          final_url_suffix: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V8.Common.CustomParameter.t()],
          display_url: String.t(),
          type: Google.Ads.Googleads.V8.Enums.AdTypeEnum.AdType.t(),
          added_by_google_ads: boolean,
          device_preference: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device.t(),
          url_collections: [Google.Ads.Googleads.V8.Common.UrlCollection.t()],
          name: String.t(),
          system_managed_resource_source:
            Google.Ads.Googleads.V8.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource.t()
        }

  defstruct [
    :ad_data,
    :resource_name,
    :id,
    :final_urls,
    :final_app_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :final_url_suffix,
    :url_custom_parameters,
    :display_url,
    :type,
    :added_by_google_ads,
    :device_preference,
    :url_collections,
    :name,
    :system_managed_resource_source
  ]

  oneof :ad_data, 0
  field :resource_name, 37, optional: true, type: :string
  field :id, 40, optional: true, type: :int64
  field :final_urls, 41, repeated: true, type: :string
  field :final_app_urls, 35, repeated: true, type: Google.Ads.Googleads.V8.Common.FinalAppUrl
  field :final_mobile_urls, 42, repeated: true, type: :string
  field :tracking_url_template, 43, optional: true, type: :string
  field :final_url_suffix, 44, optional: true, type: :string

  field :url_custom_parameters, 10,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :display_url, 45, optional: true, type: :string

  field :type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdTypeEnum.AdType,
    enum: true

  field :added_by_google_ads, 46, optional: true, type: :bool

  field :device_preference, 20,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device,
    enum: true

  field :url_collections, 26, repeated: true, type: Google.Ads.Googleads.V8.Common.UrlCollection
  field :name, 47, optional: true, type: :string

  field :system_managed_resource_source, 27,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource,
    enum: true

  field :text_ad, 6, optional: true, type: Google.Ads.Googleads.V8.Common.TextAdInfo, oneof: 0

  field :expanded_text_ad, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ExpandedTextAdInfo,
    oneof: 0

  field :call_ad, 49, optional: true, type: Google.Ads.Googleads.V8.Common.CallAdInfo, oneof: 0

  field :expanded_dynamic_search_ad, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ExpandedDynamicSearchAdInfo,
    oneof: 0

  field :hotel_ad, 15, optional: true, type: Google.Ads.Googleads.V8.Common.HotelAdInfo, oneof: 0

  field :shopping_smart_ad, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ShoppingSmartAdInfo,
    oneof: 0

  field :shopping_product_ad, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ShoppingProductAdInfo,
    oneof: 0

  field :gmail_ad, 21, optional: true, type: Google.Ads.Googleads.V8.Common.GmailAdInfo, oneof: 0
  field :image_ad, 22, optional: true, type: Google.Ads.Googleads.V8.Common.ImageAdInfo, oneof: 0
  field :video_ad, 24, optional: true, type: Google.Ads.Googleads.V8.Common.VideoAdInfo, oneof: 0

  field :video_responsive_ad, 39,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.VideoResponsiveAdInfo,
    oneof: 0

  field :responsive_search_ad, 25,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ResponsiveSearchAdInfo,
    oneof: 0

  field :legacy_responsive_display_ad, 28,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.LegacyResponsiveDisplayAdInfo,
    oneof: 0

  field :app_ad, 29, optional: true, type: Google.Ads.Googleads.V8.Common.AppAdInfo, oneof: 0

  field :legacy_app_install_ad, 30,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.LegacyAppInstallAdInfo,
    oneof: 0

  field :responsive_display_ad, 31,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ResponsiveDisplayAdInfo,
    oneof: 0

  field :local_ad, 32, optional: true, type: Google.Ads.Googleads.V8.Common.LocalAdInfo, oneof: 0

  field :display_upload_ad, 33,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.DisplayUploadAdInfo,
    oneof: 0

  field :app_engagement_ad, 34,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AppEngagementAdInfo,
    oneof: 0

  field :shopping_comparison_listing_ad, 36,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ShoppingComparisonListingAdInfo,
    oneof: 0

  field :smart_campaign_ad, 48,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.SmartCampaignAdInfo,
    oneof: 0
end
