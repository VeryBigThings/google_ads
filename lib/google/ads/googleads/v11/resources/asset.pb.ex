defmodule Google.Ads.Googleads.V11.Resources.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset_data:
            {:youtube_video_asset, Google.Ads.Googleads.V11.Common.YoutubeVideoAsset.t() | nil}
            | {:media_bundle_asset, Google.Ads.Googleads.V11.Common.MediaBundleAsset.t() | nil}
            | {:image_asset, Google.Ads.Googleads.V11.Common.ImageAsset.t() | nil}
            | {:text_asset, Google.Ads.Googleads.V11.Common.TextAsset.t() | nil}
            | {:lead_form_asset, Google.Ads.Googleads.V11.Common.LeadFormAsset.t() | nil}
            | {:book_on_google_asset, Google.Ads.Googleads.V11.Common.BookOnGoogleAsset.t() | nil}
            | {:promotion_asset, Google.Ads.Googleads.V11.Common.PromotionAsset.t() | nil}
            | {:callout_asset, Google.Ads.Googleads.V11.Common.CalloutAsset.t() | nil}
            | {:structured_snippet_asset,
               Google.Ads.Googleads.V11.Common.StructuredSnippetAsset.t() | nil}
            | {:sitelink_asset, Google.Ads.Googleads.V11.Common.SitelinkAsset.t() | nil}
            | {:page_feed_asset, Google.Ads.Googleads.V11.Common.PageFeedAsset.t() | nil}
            | {:dynamic_education_asset,
               Google.Ads.Googleads.V11.Common.DynamicEducationAsset.t() | nil}
            | {:mobile_app_asset, Google.Ads.Googleads.V11.Common.MobileAppAsset.t() | nil}
            | {:hotel_callout_asset, Google.Ads.Googleads.V11.Common.HotelCalloutAsset.t() | nil}
            | {:call_asset, Google.Ads.Googleads.V11.Common.CallAsset.t() | nil}
            | {:price_asset, Google.Ads.Googleads.V11.Common.PriceAsset.t() | nil}
            | {:call_to_action_asset, Google.Ads.Googleads.V11.Common.CallToActionAsset.t() | nil}
            | {:dynamic_real_estate_asset,
               Google.Ads.Googleads.V11.Common.DynamicRealEstateAsset.t() | nil}
            | {:dynamic_custom_asset,
               Google.Ads.Googleads.V11.Common.DynamicCustomAsset.t() | nil}
            | {:dynamic_hotels_and_rentals_asset,
               Google.Ads.Googleads.V11.Common.DynamicHotelsAndRentalsAsset.t() | nil}
            | {:dynamic_flights_asset,
               Google.Ads.Googleads.V11.Common.DynamicFlightsAsset.t() | nil}
            | {:discovery_carousel_card_asset,
               Google.Ads.Googleads.V11.Common.DiscoveryCarouselCardAsset.t() | nil}
            | {:dynamic_travel_asset,
               Google.Ads.Googleads.V11.Common.DynamicTravelAsset.t() | nil}
            | {:dynamic_local_asset, Google.Ads.Googleads.V11.Common.DynamicLocalAsset.t() | nil}
            | {:dynamic_jobs_asset, Google.Ads.Googleads.V11.Common.DynamicJobsAsset.t() | nil},
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          type: Google.Ads.Googleads.V11.Enums.AssetTypeEnum.AssetType.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V11.Common.CustomParameter.t()],
          final_url_suffix: String.t(),
          source: Google.Ads.Googleads.V11.Enums.AssetSourceEnum.AssetSource.t(),
          policy_summary: Google.Ads.Googleads.V11.Resources.AssetPolicySummary.t() | nil
        }

  defstruct asset_data: nil,
            resource_name: "",
            id: 0,
            name: "",
            type: :UNSPECIFIED,
            final_urls: [],
            final_mobile_urls: [],
            tracking_url_template: "",
            url_custom_parameters: [],
            final_url_suffix: "",
            source: :UNSPECIFIED,
            policy_summary: nil

  oneof :asset_data, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 11, type: :int64, deprecated: false
  field :name, 12, type: :string

  field :type, 4,
    type: Google.Ads.Googleads.V11.Enums.AssetTypeEnum.AssetType,
    enum: true,
    deprecated: false

  field :final_urls, 14, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 16, repeated: true, type: :string, json_name: "finalMobileUrls"
  field :tracking_url_template, 17, type: :string, json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 18,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :final_url_suffix, 19, type: :string, json_name: "finalUrlSuffix"

  field :source, 38,
    type: Google.Ads.Googleads.V11.Enums.AssetSourceEnum.AssetSource,
    enum: true,
    deprecated: false

  field :policy_summary, 13,
    type: Google.Ads.Googleads.V11.Resources.AssetPolicySummary,
    json_name: "policySummary",
    deprecated: false

  field :youtube_video_asset, 5,
    type: Google.Ads.Googleads.V11.Common.YoutubeVideoAsset,
    json_name: "youtubeVideoAsset",
    oneof: 0,
    deprecated: false

  field :media_bundle_asset, 6,
    type: Google.Ads.Googleads.V11.Common.MediaBundleAsset,
    json_name: "mediaBundleAsset",
    oneof: 0,
    deprecated: false

  field :image_asset, 7,
    type: Google.Ads.Googleads.V11.Common.ImageAsset,
    json_name: "imageAsset",
    oneof: 0,
    deprecated: false

  field :text_asset, 8,
    type: Google.Ads.Googleads.V11.Common.TextAsset,
    json_name: "textAsset",
    oneof: 0,
    deprecated: false

  field :lead_form_asset, 9,
    type: Google.Ads.Googleads.V11.Common.LeadFormAsset,
    json_name: "leadFormAsset",
    oneof: 0

  field :book_on_google_asset, 10,
    type: Google.Ads.Googleads.V11.Common.BookOnGoogleAsset,
    json_name: "bookOnGoogleAsset",
    oneof: 0

  field :promotion_asset, 15,
    type: Google.Ads.Googleads.V11.Common.PromotionAsset,
    json_name: "promotionAsset",
    oneof: 0

  field :callout_asset, 20,
    type: Google.Ads.Googleads.V11.Common.CalloutAsset,
    json_name: "calloutAsset",
    oneof: 0

  field :structured_snippet_asset, 21,
    type: Google.Ads.Googleads.V11.Common.StructuredSnippetAsset,
    json_name: "structuredSnippetAsset",
    oneof: 0

  field :sitelink_asset, 22,
    type: Google.Ads.Googleads.V11.Common.SitelinkAsset,
    json_name: "sitelinkAsset",
    oneof: 0

  field :page_feed_asset, 23,
    type: Google.Ads.Googleads.V11.Common.PageFeedAsset,
    json_name: "pageFeedAsset",
    oneof: 0

  field :dynamic_education_asset, 24,
    type: Google.Ads.Googleads.V11.Common.DynamicEducationAsset,
    json_name: "dynamicEducationAsset",
    oneof: 0

  field :mobile_app_asset, 25,
    type: Google.Ads.Googleads.V11.Common.MobileAppAsset,
    json_name: "mobileAppAsset",
    oneof: 0

  field :hotel_callout_asset, 26,
    type: Google.Ads.Googleads.V11.Common.HotelCalloutAsset,
    json_name: "hotelCalloutAsset",
    oneof: 0

  field :call_asset, 27,
    type: Google.Ads.Googleads.V11.Common.CallAsset,
    json_name: "callAsset",
    oneof: 0

  field :price_asset, 28,
    type: Google.Ads.Googleads.V11.Common.PriceAsset,
    json_name: "priceAsset",
    oneof: 0

  field :call_to_action_asset, 29,
    type: Google.Ads.Googleads.V11.Common.CallToActionAsset,
    json_name: "callToActionAsset",
    oneof: 0,
    deprecated: false

  field :dynamic_real_estate_asset, 30,
    type: Google.Ads.Googleads.V11.Common.DynamicRealEstateAsset,
    json_name: "dynamicRealEstateAsset",
    oneof: 0

  field :dynamic_custom_asset, 31,
    type: Google.Ads.Googleads.V11.Common.DynamicCustomAsset,
    json_name: "dynamicCustomAsset",
    oneof: 0

  field :dynamic_hotels_and_rentals_asset, 32,
    type: Google.Ads.Googleads.V11.Common.DynamicHotelsAndRentalsAsset,
    json_name: "dynamicHotelsAndRentalsAsset",
    oneof: 0

  field :dynamic_flights_asset, 33,
    type: Google.Ads.Googleads.V11.Common.DynamicFlightsAsset,
    json_name: "dynamicFlightsAsset",
    oneof: 0

  field :discovery_carousel_card_asset, 34,
    type: Google.Ads.Googleads.V11.Common.DiscoveryCarouselCardAsset,
    json_name: "discoveryCarouselCardAsset",
    oneof: 0,
    deprecated: false

  field :dynamic_travel_asset, 35,
    type: Google.Ads.Googleads.V11.Common.DynamicTravelAsset,
    json_name: "dynamicTravelAsset",
    oneof: 0

  field :dynamic_local_asset, 36,
    type: Google.Ads.Googleads.V11.Common.DynamicLocalAsset,
    json_name: "dynamicLocalAsset",
    oneof: 0

  field :dynamic_jobs_asset, 37,
    type: Google.Ads.Googleads.V11.Common.DynamicJobsAsset,
    json_name: "dynamicJobsAsset",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Resources.AssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V11.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V11.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V11.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct policy_topic_entries: [],
            review_status: :UNSPECIFIED,
            approval_status: :UNSPECIFIED

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PolicyTopicEntry,
    json_name: "policyTopicEntries",
    deprecated: false

  field :review_status, 2,
    type: Google.Ads.Googleads.V11.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    json_name: "reviewStatus",
    enum: true,
    deprecated: false

  field :approval_status, 3,
    type: Google.Ads.Googleads.V11.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false
end
