defmodule Google.Ads.Googleads.V8.Resources.ChangeStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          last_change_date_time: String.t(),
          resource_type:
            Google.Ads.Googleads.V8.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType.t(),
          campaign: String.t(),
          ad_group: String.t(),
          resource_status:
            Google.Ads.Googleads.V8.Enums.ChangeStatusOperationEnum.ChangeStatusOperation.t(),
          ad_group_ad: String.t(),
          ad_group_criterion: String.t(),
          campaign_criterion: String.t(),
          feed: String.t(),
          feed_item: String.t(),
          ad_group_feed: String.t(),
          campaign_feed: String.t(),
          ad_group_bid_modifier: String.t(),
          shared_set: String.t(),
          campaign_shared_set: String.t(),
          asset: String.t(),
          customer_asset: String.t(),
          campaign_asset: String.t(),
          ad_group_asset: String.t()
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
    :ad_group_bid_modifier,
    :shared_set,
    :campaign_shared_set,
    :asset,
    :customer_asset,
    :campaign_asset,
    :ad_group_asset
  ]

  field :resource_name, 1, type: :string
  field :last_change_date_time, 24, type: :string

  field :resource_type, 4,
    type: Google.Ads.Googleads.V8.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType,
    enum: true

  field :campaign, 17, type: :string
  field :ad_group, 18, type: :string

  field :resource_status, 8,
    type: Google.Ads.Googleads.V8.Enums.ChangeStatusOperationEnum.ChangeStatusOperation,
    enum: true

  field :ad_group_ad, 25, type: :string
  field :ad_group_criterion, 26, type: :string
  field :campaign_criterion, 27, type: :string
  field :feed, 28, type: :string
  field :feed_item, 29, type: :string
  field :ad_group_feed, 30, type: :string
  field :campaign_feed, 31, type: :string
  field :ad_group_bid_modifier, 32, type: :string
  field :shared_set, 33, type: :string
  field :campaign_shared_set, 34, type: :string
  field :asset, 35, type: :string
  field :customer_asset, 36, type: :string
  field :campaign_asset, 37, type: :string
  field :ad_group_asset, 38, type: :string
end
