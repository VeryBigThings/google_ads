defmodule Google.Ads.Googleads.V8Availabilities.Resources.FeedItemSet do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :dynamic_set_filter, 0

  field :resource_name, 1, type: :string
  field :feed, 2, type: :string
  field :feed_item_set_id, 3, type: :int64
  field :display_name, 4, type: :string

  field :status, 8,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FeedItemSetStatusEnum.FeedItemSetStatus,
    enum: true

  field :dynamic_location_set_filter, 5,
    type: Google.Ads.Googleads.V8Availabilities.Common.DynamicLocationSetFilter,
    oneof: 0

  field :dynamic_affiliate_location_set_filter, 6,
    type: Google.Ads.Googleads.V8Availabilities.Common.DynamicAffiliateLocationSetFilter,
    oneof: 0
end
