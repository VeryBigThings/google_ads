defmodule Google.Ads.Googleads.V2.Resources.FeedItemTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          resource_name: String.t(),
          feed_item: Google.Protobuf.StringValue.t() | nil,
          feed_item_target_type: atom | integer,
          feed_item_target_id: Google.Protobuf.Int64Value.t() | nil
        }
  defstruct [:target, :resource_name, :feed_item, :feed_item_target_type, :feed_item_target_id]

  oneof(:target, 0)
  field(:resource_name, 1, type: :string)
  field(:feed_item, 2, type: Google.Protobuf.StringValue)

  field(:feed_item_target_type, 3,
    type: Google.Ads.Googleads.V2.Enums.FeedItemTargetTypeEnum.FeedItemTargetType,
    enum: true
  )

  field(:feed_item_target_id, 6, type: Google.Protobuf.Int64Value)
  field(:campaign, 4, type: Google.Protobuf.StringValue, oneof: 0)
  field(:ad_group, 5, type: Google.Protobuf.StringValue, oneof: 0)
  field(:keyword, 7, type: Google.Ads.Googleads.V2.Common.KeywordInfo, oneof: 0)
  field(:geo_target_constant, 8, type: Google.Protobuf.StringValue, oneof: 0)

  field(:device, 9,
    type: Google.Ads.Googleads.V2.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice,
    enum: true,
    oneof: 0
  )

  field(:ad_schedule, 10, type: Google.Ads.Googleads.V2.Common.AdScheduleInfo, oneof: 0)
end
