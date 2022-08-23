defmodule Google.Ads.Googleads.V11.Resources.FeedItemTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target:
            {:campaign, String.t()}
            | {:ad_group, String.t()}
            | {:keyword, Google.Ads.Googleads.V11.Common.KeywordInfo.t() | nil}
            | {:geo_target_constant, String.t()}
            | {:device,
               Google.Ads.Googleads.V11.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice.t()}
            | {:ad_schedule, Google.Ads.Googleads.V11.Common.AdScheduleInfo.t() | nil},
          resource_name: String.t(),
          feed_item: String.t(),
          feed_item_target_type:
            Google.Ads.Googleads.V11.Enums.FeedItemTargetTypeEnum.FeedItemTargetType.t(),
          feed_item_target_id: integer,
          status: Google.Ads.Googleads.V11.Enums.FeedItemTargetStatusEnum.FeedItemTargetStatus.t()
        }

  defstruct target: nil,
            resource_name: "",
            feed_item: "",
            feed_item_target_type: :UNSPECIFIED,
            feed_item_target_id: 0,
            status: :UNSPECIFIED

  oneof :target, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed_item, 12, type: :string, json_name: "feedItem", deprecated: false

  field :feed_item_target_type, 3,
    type: Google.Ads.Googleads.V11.Enums.FeedItemTargetTypeEnum.FeedItemTargetType,
    json_name: "feedItemTargetType",
    enum: true,
    deprecated: false

  field :feed_item_target_id, 13, type: :int64, json_name: "feedItemTargetId", deprecated: false

  field :status, 11,
    type: Google.Ads.Googleads.V11.Enums.FeedItemTargetStatusEnum.FeedItemTargetStatus,
    enum: true,
    deprecated: false

  field :campaign, 14, type: :string, oneof: 0, deprecated: false
  field :ad_group, 15, type: :string, json_name: "adGroup", oneof: 0, deprecated: false

  field :keyword, 7,
    type: Google.Ads.Googleads.V11.Common.KeywordInfo,
    oneof: 0,
    deprecated: false

  field :geo_target_constant, 16,
    type: :string,
    json_name: "geoTargetConstant",
    oneof: 0,
    deprecated: false

  field :device, 9,
    type: Google.Ads.Googleads.V11.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true,
    oneof: 0,
    deprecated: false

  field :ad_schedule, 10,
    type: Google.Ads.Googleads.V11.Common.AdScheduleInfo,
    json_name: "adSchedule",
    oneof: 0,
    deprecated: false
end
