defmodule Google.Ads.Googleads.V8Availabilities.Resources.FeedItemTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          resource_name: String.t(),
          feed_item: String.t(),
          feed_item_target_type:
            Google.Ads.Googleads.V8Availabilities.Enums.FeedItemTargetTypeEnum.FeedItemTargetType.t(),
          feed_item_target_id: integer,
          status: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemTargetStatusEnum.FeedItemTargetStatus.t()
        }

  defstruct [
    :target,
    :resource_name,
    :feed_item,
    :feed_item_target_type,
    :feed_item_target_id,
    :status
  ]

  oneof :target, 0

  field :resource_name, 1, type: :string
  field :feed_item, 12, type: :string

  field :feed_item_target_type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemTargetTypeEnum.FeedItemTargetType,
    enum: true

  field :feed_item_target_id, 13, type: :int64

  field :status, 11,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemTargetStatusEnum.FeedItemTargetStatus,
    enum: true

  field :campaign, 14, type: :string, oneof: 0
  field :ad_group, 15, type: :string, oneof: 0
  field :keyword, 7, type: Google.Ads.Googleads.V8Availabilities.Common.KeywordInfo, oneof: 0
  field :geo_target_constant, 16, type: :string, oneof: 0

  field :device, 9,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true,
    oneof: 0

  field :ad_schedule, 10, type: Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo, oneof: 0
end
