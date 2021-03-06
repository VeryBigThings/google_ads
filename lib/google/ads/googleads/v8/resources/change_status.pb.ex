defmodule Google.Ads.Googleads.V8.Resources.ChangeStatus do
  @moduledoc false
  use Protobuf, syntax: :proto2

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
          ad_group_bid_modifier: String.t()
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

  field :resource_name, 1, optional: true, type: :string
  field :last_change_date_time, 24, optional: true, type: :string

  field :resource_type, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType,
    enum: true

  field :campaign, 17, optional: true, type: :string
  field :ad_group, 18, optional: true, type: :string

  field :resource_status, 8,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.ChangeStatusOperationEnum.ChangeStatusOperation,
    enum: true

  field :ad_group_ad, 25, optional: true, type: :string
  field :ad_group_criterion, 26, optional: true, type: :string
  field :campaign_criterion, 27, optional: true, type: :string
  field :feed, 28, optional: true, type: :string
  field :feed_item, 29, optional: true, type: :string
  field :ad_group_feed, 30, optional: true, type: :string
  field :campaign_feed, 31, optional: true, type: :string
  field :ad_group_bid_modifier, 32, optional: true, type: :string
end
