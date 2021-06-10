defmodule Google.Ads.Googleads.V8.Resources.ChangeStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          last_change_date_time: Google.Protobuf.StringValue.t() | nil,
          resource_type:
            Google.Ads.Googleads.V8.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType.t(),
          campaign: Google.Protobuf.StringValue.t() | nil,
          ad_group: Google.Protobuf.StringValue.t() | nil,
          resource_status:
            Google.Ads.Googleads.V8.Enums.ChangeStatusOperationEnum.ChangeStatusOperation.t(),
          ad_group_ad: Google.Protobuf.StringValue.t() | nil,
          ad_group_criterion: Google.Protobuf.StringValue.t() | nil,
          campaign_criterion: Google.Protobuf.StringValue.t() | nil,
          feed: Google.Protobuf.StringValue.t() | nil,
          feed_item: Google.Protobuf.StringValue.t() | nil,
          ad_group_feed: Google.Protobuf.StringValue.t() | nil,
          campaign_feed: Google.Protobuf.StringValue.t() | nil,
          ad_group_bid_modifier: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :resource_name,
    :last_change_date_time,
    :resource_type,
    :campaign,
    :ad_group,
    :resource_status,
    :ad_group_ad,
    :ad_group_criterion,
    :campaign_criterion,
    :feed,
    :feed_item,
    :ad_group_feed,
    :campaign_feed,
    :ad_group_bid_modifier
  ]

  field :resource_name, 1, type: :string
  field :last_change_date_time, 24, type: Google.Protobuf.StringValue

  field :resource_type, 4,
    type: Google.Ads.Googleads.V8.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType,
    enum: true

  field :campaign, 17, type: Google.Protobuf.StringValue
  field :ad_group, 18, type: Google.Protobuf.StringValue

  field :resource_status, 8,
    type: Google.Ads.Googleads.V8.Enums.ChangeStatusOperationEnum.ChangeStatusOperation,
    enum: true

  field :ad_group_ad, 25, type: Google.Protobuf.StringValue
  field :ad_group_criterion, 26, type: Google.Protobuf.StringValue
  field :campaign_criterion, 27, type: Google.Protobuf.StringValue
  field :feed, 28, type: Google.Protobuf.StringValue
  field :feed_item, 29, type: Google.Protobuf.StringValue
  field :ad_group_feed, 30, type: Google.Protobuf.StringValue
  field :campaign_feed, 31, type: Google.Protobuf.StringValue
  field :ad_group_bid_modifier, 32, type: Google.Protobuf.StringValue
end
