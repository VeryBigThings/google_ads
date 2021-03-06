defmodule Google.Ads.Googleads.V8Availabilities.Resources.Ad do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_data: {atom, any},
          resource_name: String.t(),
          id: integer,
          final_urls: [String.t()],
          final_app_urls: [Google.Ads.Googleads.V8Availabilities.Common.FinalAppUrl.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: String.t(),
          final_url_suffix: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V8Availabilities.Common.CustomParameter.t()],
          display_url: String.t(),
          type: Google.Ads.Googleads.V8Availabilities.Enums.AdTypeEnum.AdType.t(),
          added_by_google_ads: boolean,
          device_preference: Google.Ads.Googleads.V8Availabilities.Enums.DeviceEnum.Device.t(),
          url_collections: [Google.Ads.Googleads.V8Availabilities.Common.UrlCollection.t()],
          name: String.t(),
          system_managed_resource_source:
            Google.Ads.Googleads.V8Availabilities.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource.t()
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

  field :resource_name, 37, type: :string
  field :id, 40, type: :int64
  field :final_urls, 41, repeated: true, type: :string
  field :final_app_urls, 35, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.FinalAppUrl
  field :final_mobile_urls, 42, repeated: true, type: :string
  field :tracking_url_template, 43, type: :string
  field :final_url_suffix, 44, type: :string

  field :url_custom_parameters, 10,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.CustomParameter

  field :display_url, 45, type: :string
  field :type, 5, type: Google.Ads.Googleads.V8Availabilities.Enums.AdTypeEnum.AdType, enum: true
  field :added_by_google_ads, 46, type: :bool
  field :device_preference, 20, type: Google.Ads.Googleads.V8Availabilities.Enums.DeviceEnum.Device, enum: true
  field :url_collections, 26, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.UrlCollection
  field :name, 47, type: :string

  field :system_managed_resource_source, 27,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource,
    enum: true

  field :text_ad, 6, type: Google.Ads.Googleads.V8Availabilities.Common.TextAdInfo, oneof: 0
  field :expanded_text_ad, 7, type: Google.Ads.Googleads.V8Availabilities.Common.ExpandedTextAdInfo, oneof: 0
  field :call_ad, 49, type: Google.Ads.Googleads.V8Availabilities.Common.CallAdInfo, oneof: 0

  field :expanded_dynamic_search_ad, 14,
    type: Google.Ads.Googleads.V8Availabilities.Common.ExpandedDynamicSearchAdInfo,
    oneof: 0

  field :hotel_ad, 15, type: Google.Ads.Googleads.V8Availabilities.Common.HotelAdInfo, oneof: 0
  field :shopping_smart_ad, 17, type: Google.Ads.Googleads.V8Availabilities.Common.ShoppingSmartAdInfo, oneof: 0

  field :shopping_product_ad, 18,
    type: Google.Ads.Googleads.V8Availabilities.Common.ShoppingProductAdInfo,
    oneof: 0

  field :gmail_ad, 21, type: Google.Ads.Googleads.V8Availabilities.Common.GmailAdInfo, oneof: 0
  field :image_ad, 22, type: Google.Ads.Googleads.V8Availabilities.Common.ImageAdInfo, oneof: 0
  field :video_ad, 24, type: Google.Ads.Googleads.V8Availabilities.Common.VideoAdInfo, oneof: 0

  field :video_responsive_ad, 39,
    type: Google.Ads.Googleads.V8Availabilities.Common.VideoResponsiveAdInfo,
    oneof: 0

  field :responsive_search_ad, 25,
    type: Google.Ads.Googleads.V8Availabilities.Common.ResponsiveSearchAdInfo,
    oneof: 0

  field :legacy_responsive_display_ad, 28,
    type: Google.Ads.Googleads.V8Availabilities.Common.LegacyResponsiveDisplayAdInfo,
    oneof: 0

  field :app_ad, 29, type: Google.Ads.Googleads.V8Availabilities.Common.AppAdInfo, oneof: 0

  field :legacy_app_install_ad, 30,
    type: Google.Ads.Googleads.V8Availabilities.Common.LegacyAppInstallAdInfo,
    oneof: 0

  field :responsive_display_ad, 31,
    type: Google.Ads.Googleads.V8Availabilities.Common.ResponsiveDisplayAdInfo,
    oneof: 0

  field :local_ad, 32, type: Google.Ads.Googleads.V8Availabilities.Common.LocalAdInfo, oneof: 0
  field :display_upload_ad, 33, type: Google.Ads.Googleads.V8Availabilities.Common.DisplayUploadAdInfo, oneof: 0
  field :app_engagement_ad, 34, type: Google.Ads.Googleads.V8Availabilities.Common.AppEngagementAdInfo, oneof: 0

  field :shopping_comparison_listing_ad, 36,
    type: Google.Ads.Googleads.V8Availabilities.Common.ShoppingComparisonListingAdInfo,
    oneof: 0

  field :smart_campaign_ad, 48, type: Google.Ads.Googleads.V8Availabilities.Common.SmartCampaignAdInfo, oneof: 0
end
