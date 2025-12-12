defmodule Google.Ads.Googleads.V4.Resources.ChangeStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :last_change_date_time, 3, type: Google.Protobuf.StringValue

  field :resource_type, 4,
    type: Google.Ads.Googleads.V4.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType,
    enum: true

  field :campaign, 5, type: Google.Protobuf.StringValue
  field :ad_group, 6, type: Google.Protobuf.StringValue

  field :resource_status, 8,
    type: Google.Ads.Googleads.V4.Enums.ChangeStatusOperationEnum.ChangeStatusOperation,
    enum: true

  field :ad_group_ad, 9, type: Google.Protobuf.StringValue
  field :ad_group_criterion, 10, type: Google.Protobuf.StringValue
  field :campaign_criterion, 11, type: Google.Protobuf.StringValue
  field :feed, 12, type: Google.Protobuf.StringValue
  field :feed_item, 13, type: Google.Protobuf.StringValue
  field :ad_group_feed, 14, type: Google.Protobuf.StringValue
  field :campaign_feed, 15, type: Google.Protobuf.StringValue
  field :ad_group_bid_modifier, 16, type: Google.Protobuf.StringValue
end
