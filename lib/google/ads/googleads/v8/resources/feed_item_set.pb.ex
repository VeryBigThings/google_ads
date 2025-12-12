defmodule Google.Ads.Googleads.V8.Resources.FeedItemSet do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :dynamic_set_filter, 0
  field :resource_name, 1, optional: true, type: :string
  field :feed, 2, optional: true, type: :string
  field :feed_item_set_id, 3, optional: true, type: :int64
  field :display_name, 4, optional: true, type: :string

  field :status, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.FeedItemSetStatusEnum.FeedItemSetStatus,
    enum: true

  field :dynamic_location_set_filter, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.DynamicLocationSetFilter,
    oneof: 0

  field :dynamic_affiliate_location_set_filter, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.DynamicAffiliateLocationSetFilter,
    oneof: 0
end
