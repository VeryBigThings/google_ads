defmodule Google.Ads.Googleads.V10.Resources.Ad do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_data:
            {:text_ad, Google.Ads.Googleads.V10.Common.TextAdInfo.t() | nil}
            | {:expanded_text_ad, Google.Ads.Googleads.V10.Common.ExpandedTextAdInfo.t() | nil}
            | {:call_ad, Google.Ads.Googleads.V10.Common.CallAdInfo.t() | nil}
            | {:expanded_dynamic_search_ad,
               Google.Ads.Googleads.V10.Common.ExpandedDynamicSearchAdInfo.t() | nil}
            | {:hotel_ad, Google.Ads.Googleads.V10.Common.HotelAdInfo.t() | nil}
            | {:shopping_smart_ad, Google.Ads.Googleads.V10.Common.ShoppingSmartAdInfo.t() | nil}
            | {:shopping_product_ad,
               Google.Ads.Googleads.V10.Common.ShoppingProductAdInfo.t() | nil}
            | {:gmail_ad, Google.Ads.Googleads.V10.Common.GmailAdInfo.t() | nil}
            | {:image_ad, Google.Ads.Googleads.V10.Common.ImageAdInfo.t() | nil}
            | {:video_ad, Google.Ads.Googleads.V10.Common.VideoAdInfo.t() | nil}
            | {:video_responsive_ad,
               Google.Ads.Googleads.V10.Common.VideoResponsiveAdInfo.t() | nil}
            | {:responsive_search_ad,
               Google.Ads.Googleads.V10.Common.ResponsiveSearchAdInfo.t() | nil}
            | {:legacy_responsive_display_ad,
               Google.Ads.Googleads.V10.Common.LegacyResponsiveDisplayAdInfo.t() | nil}
            | {:app_ad, Google.Ads.Googleads.V10.Common.AppAdInfo.t() | nil}
            | {:legacy_app_install_ad,
               Google.Ads.Googleads.V10.Common.LegacyAppInstallAdInfo.t() | nil}
            | {:responsive_display_ad,
               Google.Ads.Googleads.V10.Common.ResponsiveDisplayAdInfo.t() | nil}
            | {:local_ad, Google.Ads.Googleads.V10.Common.LocalAdInfo.t() | nil}
            | {:display_upload_ad, Google.Ads.Googleads.V10.Common.DisplayUploadAdInfo.t() | nil}
            | {:app_engagement_ad, Google.Ads.Googleads.V10.Common.AppEngagementAdInfo.t() | nil}
            | {:shopping_comparison_listing_ad,
               Google.Ads.Googleads.V10.Common.ShoppingComparisonListingAdInfo.t() | nil}
            | {:smart_campaign_ad, Google.Ads.Googleads.V10.Common.SmartCampaignAdInfo.t() | nil}
            | {:app_pre_registration_ad,
               Google.Ads.Googleads.V10.Common.AppPreRegistrationAdInfo.t() | nil},
          resource_name: String.t(),
          id: integer,
          final_urls: [String.t()],
          final_app_urls: [Google.Ads.Googleads.V10.Common.FinalAppUrl.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: String.t(),
          final_url_suffix: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V10.Common.CustomParameter.t()],
          display_url: String.t(),
          type: Google.Ads.Googleads.V10.Enums.AdTypeEnum.AdType.t(),
          added_by_google_ads: boolean,
          device_preference: Google.Ads.Googleads.V10.Enums.DeviceEnum.Device.t(),
          url_collections: [Google.Ads.Googleads.V10.Common.UrlCollection.t()],
          name: String.t(),
          system_managed_resource_source:
            Google.Ads.Googleads.V10.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource.t()
        }

  defstruct ad_data: nil,
            resource_name: "",
            id: 0,
            final_urls: [],
            final_app_urls: [],
            final_mobile_urls: [],
            tracking_url_template: "",
            final_url_suffix: "",
            url_custom_parameters: [],
            display_url: "",
            type: :UNSPECIFIED,
            added_by_google_ads: false,
            device_preference: :UNSPECIFIED,
            url_collections: [],
            name: "",
            system_managed_resource_source: :UNSPECIFIED

  oneof :ad_data, 0

  field :resource_name, 37, type: :string, json_name: "resourceName", deprecated: false
  field :id, 40, type: :int64, deprecated: false
  field :final_urls, 41, repeated: true, type: :string, json_name: "finalUrls"

  field :final_app_urls, 35,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.FinalAppUrl,
    json_name: "finalAppUrls"

  field :final_mobile_urls, 42, repeated: true, type: :string, json_name: "finalMobileUrls"
  field :tracking_url_template, 43, type: :string, json_name: "trackingUrlTemplate"
  field :final_url_suffix, 44, type: :string, json_name: "finalUrlSuffix"

  field :url_custom_parameters, 10,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :display_url, 45, type: :string, json_name: "displayUrl"

  field :type, 5,
    type: Google.Ads.Googleads.V10.Enums.AdTypeEnum.AdType,
    enum: true,
    deprecated: false

  field :added_by_google_ads, 46, type: :bool, json_name: "addedByGoogleAds", deprecated: false

  field :device_preference, 20,
    type: Google.Ads.Googleads.V10.Enums.DeviceEnum.Device,
    json_name: "devicePreference",
    enum: true

  field :url_collections, 26,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.UrlCollection,
    json_name: "urlCollections"

  field :name, 47, type: :string, deprecated: false

  field :system_managed_resource_source, 27,
    type:
      Google.Ads.Googleads.V10.Enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource,
    json_name: "systemManagedResourceSource",
    enum: true,
    deprecated: false

  field :text_ad, 6,
    type: Google.Ads.Googleads.V10.Common.TextAdInfo,
    json_name: "textAd",
    oneof: 0,
    deprecated: false

  field :expanded_text_ad, 7,
    type: Google.Ads.Googleads.V10.Common.ExpandedTextAdInfo,
    json_name: "expandedTextAd",
    oneof: 0

  field :call_ad, 49,
    type: Google.Ads.Googleads.V10.Common.CallAdInfo,
    json_name: "callAd",
    oneof: 0

  field :expanded_dynamic_search_ad, 14,
    type: Google.Ads.Googleads.V10.Common.ExpandedDynamicSearchAdInfo,
    json_name: "expandedDynamicSearchAd",
    oneof: 0,
    deprecated: false

  field :hotel_ad, 15,
    type: Google.Ads.Googleads.V10.Common.HotelAdInfo,
    json_name: "hotelAd",
    oneof: 0

  field :shopping_smart_ad, 17,
    type: Google.Ads.Googleads.V10.Common.ShoppingSmartAdInfo,
    json_name: "shoppingSmartAd",
    oneof: 0

  field :shopping_product_ad, 18,
    type: Google.Ads.Googleads.V10.Common.ShoppingProductAdInfo,
    json_name: "shoppingProductAd",
    oneof: 0

  field :gmail_ad, 21,
    type: Google.Ads.Googleads.V10.Common.GmailAdInfo,
    json_name: "gmailAd",
    oneof: 0,
    deprecated: false

  field :image_ad, 22,
    type: Google.Ads.Googleads.V10.Common.ImageAdInfo,
    json_name: "imageAd",
    oneof: 0,
    deprecated: false

  field :video_ad, 24,
    type: Google.Ads.Googleads.V10.Common.VideoAdInfo,
    json_name: "videoAd",
    oneof: 0

  field :video_responsive_ad, 39,
    type: Google.Ads.Googleads.V10.Common.VideoResponsiveAdInfo,
    json_name: "videoResponsiveAd",
    oneof: 0

  field :responsive_search_ad, 25,
    type: Google.Ads.Googleads.V10.Common.ResponsiveSearchAdInfo,
    json_name: "responsiveSearchAd",
    oneof: 0

  field :legacy_responsive_display_ad, 28,
    type: Google.Ads.Googleads.V10.Common.LegacyResponsiveDisplayAdInfo,
    json_name: "legacyResponsiveDisplayAd",
    oneof: 0

  field :app_ad, 29, type: Google.Ads.Googleads.V10.Common.AppAdInfo, json_name: "appAd", oneof: 0

  field :legacy_app_install_ad, 30,
    type: Google.Ads.Googleads.V10.Common.LegacyAppInstallAdInfo,
    json_name: "legacyAppInstallAd",
    oneof: 0,
    deprecated: false

  field :responsive_display_ad, 31,
    type: Google.Ads.Googleads.V10.Common.ResponsiveDisplayAdInfo,
    json_name: "responsiveDisplayAd",
    oneof: 0

  field :local_ad, 32,
    type: Google.Ads.Googleads.V10.Common.LocalAdInfo,
    json_name: "localAd",
    oneof: 0

  field :display_upload_ad, 33,
    type: Google.Ads.Googleads.V10.Common.DisplayUploadAdInfo,
    json_name: "displayUploadAd",
    oneof: 0

  field :app_engagement_ad, 34,
    type: Google.Ads.Googleads.V10.Common.AppEngagementAdInfo,
    json_name: "appEngagementAd",
    oneof: 0

  field :shopping_comparison_listing_ad, 36,
    type: Google.Ads.Googleads.V10.Common.ShoppingComparisonListingAdInfo,
    json_name: "shoppingComparisonListingAd",
    oneof: 0

  field :smart_campaign_ad, 48,
    type: Google.Ads.Googleads.V10.Common.SmartCampaignAdInfo,
    json_name: "smartCampaignAd",
    oneof: 0

  field :app_pre_registration_ad, 50,
    type: Google.Ads.Googleads.V10.Common.AppPreRegistrationAdInfo,
    json_name: "appPreRegistrationAd",
    oneof: 0
end
