defmodule Google.Ads.Googleads.V2.Resources.ExtensionFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          extension: {atom, any},
          serving_resource_targeting: {atom, any},
          resource_name: String.t(),
          extension_type: atom | integer,
          start_date_time: Google.Protobuf.StringValue.t() | nil,
          end_date_time: Google.Protobuf.StringValue.t() | nil,
          ad_schedules: [Google.Ads.Googleads.V2.Common.AdScheduleInfo.t()],
          device: atom | integer,
          targeted_geo_target_constant: Google.Protobuf.StringValue.t() | nil,
          targeted_keyword: Google.Ads.Googleads.V2.Common.KeywordInfo.t() | nil,
          status: atom | integer
        }
  defstruct [
    :extension,
    :serving_resource_targeting,
    :resource_name,
    :extension_type,
    :start_date_time,
    :end_date_time,
    :ad_schedules,
    :device,
    :targeted_geo_target_constant,
    :targeted_keyword,
    :status
  ]

  oneof(:extension, 0)
  oneof(:serving_resource_targeting, 1)
  field(:resource_name, 1, type: :string)

  field(:extension_type, 13,
    type: Google.Ads.Googleads.V2.Enums.ExtensionTypeEnum.ExtensionType,
    enum: true
  )

  field(:start_date_time, 5, type: Google.Protobuf.StringValue)
  field(:end_date_time, 6, type: Google.Protobuf.StringValue)
  field(:ad_schedules, 16, repeated: true, type: Google.Ads.Googleads.V2.Common.AdScheduleInfo)

  field(:device, 17,
    type: Google.Ads.Googleads.V2.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true
  )

  field(:targeted_geo_target_constant, 20, type: Google.Protobuf.StringValue)
  field(:targeted_keyword, 22, type: Google.Ads.Googleads.V2.Common.KeywordInfo)

  field(:status, 4,
    type: Google.Ads.Googleads.V2.Enums.FeedItemStatusEnum.FeedItemStatus,
    enum: true
  )

  field(:sitelink_feed_item, 2, type: Google.Ads.Googleads.V2.Common.SitelinkFeedItem, oneof: 0)

  field(:structured_snippet_feed_item, 3,
    type: Google.Ads.Googleads.V2.Common.StructuredSnippetFeedItem,
    oneof: 0
  )

  field(:app_feed_item, 7, type: Google.Ads.Googleads.V2.Common.AppFeedItem, oneof: 0)
  field(:call_feed_item, 8, type: Google.Ads.Googleads.V2.Common.CallFeedItem, oneof: 0)
  field(:callout_feed_item, 9, type: Google.Ads.Googleads.V2.Common.CalloutFeedItem, oneof: 0)

  field(:text_message_feed_item, 10,
    type: Google.Ads.Googleads.V2.Common.TextMessageFeedItem,
    oneof: 0
  )

  field(:price_feed_item, 11, type: Google.Ads.Googleads.V2.Common.PriceFeedItem, oneof: 0)

  field(:promotion_feed_item, 12, type: Google.Ads.Googleads.V2.Common.PromotionFeedItem, oneof: 0)

  field(:location_feed_item, 14, type: Google.Ads.Googleads.V2.Common.LocationFeedItem, oneof: 0)

  field(:affiliate_location_feed_item, 15,
    type: Google.Ads.Googleads.V2.Common.AffiliateLocationFeedItem,
    oneof: 0
  )

  field(:targeted_campaign, 18, type: Google.Protobuf.StringValue, oneof: 1)
  field(:targeted_ad_group, 19, type: Google.Protobuf.StringValue, oneof: 1)
end
