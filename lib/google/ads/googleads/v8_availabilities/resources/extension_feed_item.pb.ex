defmodule Google.Ads.Googleads.V8Availabilities.Resources.ExtensionFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          extension: {atom, any},
          serving_resource_targeting: {atom, any},
          resource_name: String.t(),
          id: integer,
          extension_type: Google.Ads.Googleads.V8Availabilities.Enums.ExtensionTypeEnum.ExtensionType.t(),
          start_date_time: String.t(),
          end_date_time: String.t(),
          ad_schedules: [Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo.t()],
          device: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice.t(),
          targeted_geo_target_constant: String.t(),
          targeted_keyword: Google.Ads.Googleads.V8Availabilities.Common.KeywordInfo.t() | nil,
          status: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemStatusEnum.FeedItemStatus.t()
        }

  defstruct [
    :extension,
    :serving_resource_targeting,
    :resource_name,
    :id,
    :extension_type,
    :start_date_time,
    :end_date_time,
    :ad_schedules,
    :device,
    :targeted_geo_target_constant,
    :targeted_keyword,
    :status
  ]

  oneof :extension, 0
  oneof :serving_resource_targeting, 1

  field :resource_name, 1, type: :string
  field :id, 25, type: :int64

  field :extension_type, 13,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true

  field :start_date_time, 26, type: :string
  field :end_date_time, 27, type: :string
  field :ad_schedules, 16, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo

  field :device, 17,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true

  field :targeted_geo_target_constant, 30, type: :string
  field :targeted_keyword, 22, type: Google.Ads.Googleads.V8Availabilities.Common.KeywordInfo

  field :status, 4,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true

  field :sitelink_feed_item, 2, type: Google.Ads.Googleads.V8Availabilities.Common.SitelinkFeedItem, oneof: 0

  field :structured_snippet_feed_item, 3,
    type: Google.Ads.Googleads.V8Availabilities.Common.StructuredSnippetFeedItem,
    oneof: 0

  field :app_feed_item, 7, type: Google.Ads.Googleads.V8Availabilities.Common.AppFeedItem, oneof: 0
  field :call_feed_item, 8, type: Google.Ads.Googleads.V8Availabilities.Common.CallFeedItem, oneof: 0
  field :callout_feed_item, 9, type: Google.Ads.Googleads.V8Availabilities.Common.CalloutFeedItem, oneof: 0

  field :text_message_feed_item, 10,
    type: Google.Ads.Googleads.V8Availabilities.Common.TextMessageFeedItem,
    oneof: 0

  field :price_feed_item, 11, type: Google.Ads.Googleads.V8Availabilities.Common.PriceFeedItem, oneof: 0
  field :promotion_feed_item, 12, type: Google.Ads.Googleads.V8Availabilities.Common.PromotionFeedItem, oneof: 0
  field :location_feed_item, 14, type: Google.Ads.Googleads.V8Availabilities.Common.LocationFeedItem, oneof: 0

  field :affiliate_location_feed_item, 15,
    type: Google.Ads.Googleads.V8Availabilities.Common.AffiliateLocationFeedItem,
    oneof: 0

  field :hotel_callout_feed_item, 23,
    type: Google.Ads.Googleads.V8Availabilities.Common.HotelCalloutFeedItem,
    oneof: 0

  field :image_feed_item, 31, type: Google.Ads.Googleads.V8Availabilities.Common.ImageFeedItem, oneof: 0
  field :targeted_campaign, 28, type: :string, oneof: 1
  field :targeted_ad_group, 29, type: :string, oneof: 1
end
