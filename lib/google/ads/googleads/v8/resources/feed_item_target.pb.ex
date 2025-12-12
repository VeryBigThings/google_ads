defmodule Google.Ads.Googleads.V8.Resources.FeedItemTarget do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :target, 0
  field :resource_name, 1, optional: true, type: :string
  field :feed_item, 12, optional: true, type: :string

  field :feed_item_target_type, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.FeedItemTargetTypeEnum.FeedItemTargetType,
    enum: true

  field :feed_item_target_id, 13, optional: true, type: :int64

  field :status, 11,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.FeedItemTargetStatusEnum.FeedItemTargetStatus,
    enum: true

  field :campaign, 14, optional: true, type: :string, oneof: 0
  field :ad_group, 15, optional: true, type: :string, oneof: 0
  field :keyword, 7, optional: true, type: Google.Ads.Googleads.V8.Common.KeywordInfo, oneof: 0
  field :geo_target_constant, 16, optional: true, type: :string, oneof: 0

  field :device, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true,
    oneof: 0

  field :ad_schedule, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AdScheduleInfo,
    oneof: 0
end
