defmodule Google.Ads.Googleads.V8Availabilities.Resources.ChangeEvent.ChangedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V8Availabilities.Resources.Ad.t() | nil,
          ad_group: Google.Ads.Googleads.V8Availabilities.Resources.AdGroup.t() | nil,
          ad_group_criterion: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupCriterion.t() | nil,
          campaign: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.t() | nil,
          campaign_budget: Google.Ads.Googleads.V8Availabilities.Resources.CampaignBudget.t() | nil,
          ad_group_bid_modifier: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupBidModifier.t() | nil,
          campaign_criterion: Google.Ads.Googleads.V8Availabilities.Resources.CampaignCriterion.t() | nil,
          feed: Google.Ads.Googleads.V8Availabilities.Resources.Feed.t() | nil,
          feed_item: Google.Ads.Googleads.V8Availabilities.Resources.FeedItem.t() | nil,
          campaign_feed: Google.Ads.Googleads.V8Availabilities.Resources.CampaignFeed.t() | nil,
          ad_group_feed: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupFeed.t() | nil,
          ad_group_ad: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAd.t() | nil
        }

  defstruct [
    :ad,
    :ad_group,
    :ad_group_criterion,
    :campaign,
    :campaign_budget,
    :ad_group_bid_modifier,
    :campaign_criterion,
    :feed,
    :feed_item,
    :campaign_feed,
    :ad_group_feed,
    :ad_group_ad
  ]

  field :ad, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.Ad
  field :ad_group, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroup
  field :ad_group_criterion, 3, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupCriterion
  field :campaign, 4, type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign
  field :campaign_budget, 5, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignBudget
  field :ad_group_bid_modifier, 6, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupBidModifier
  field :campaign_criterion, 7, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignCriterion
  field :feed, 8, type: Google.Ads.Googleads.V8Availabilities.Resources.Feed
  field :feed_item, 9, type: Google.Ads.Googleads.V8Availabilities.Resources.FeedItem
  field :campaign_feed, 10, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignFeed
  field :ad_group_feed, 11, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupFeed
  field :ad_group_ad, 12, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAd
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.ChangeEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          change_date_time: String.t(),
          change_resource_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType.t(),
          change_resource_name: String.t(),
          client_type: Google.Ads.Googleads.V8Availabilities.Enums.ChangeClientTypeEnum.ChangeClientType.t(),
          user_email: String.t(),
          old_resource: Google.Ads.Googleads.V8Availabilities.Resources.ChangeEvent.ChangedResource.t() | nil,
          new_resource: Google.Ads.Googleads.V8Availabilities.Resources.ChangeEvent.ChangedResource.t() | nil,
          resource_change_operation:
            Google.Ads.Googleads.V8Availabilities.Enums.ResourceChangeOperationEnum.ResourceChangeOperation.t(),
          changed_fields: Google.Protobuf.FieldMask.t() | nil,
          campaign: String.t(),
          ad_group: String.t(),
          feed: String.t(),
          feed_item: String.t()
        }

  defstruct [
    :resource_name,
    :change_date_time,
    :change_resource_type,
    :change_resource_name,
    :client_type,
    :user_email,
    :old_resource,
    :new_resource,
    :resource_change_operation,
    :changed_fields,
    :campaign,
    :ad_group,
    :feed,
    :feed_item
  ]

  field :resource_name, 1, type: :string
  field :change_date_time, 2, type: :string

  field :change_resource_type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType,
    enum: true

  field :change_resource_name, 4, type: :string

  field :client_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ChangeClientTypeEnum.ChangeClientType,
    enum: true

  field :user_email, 6, type: :string
  field :old_resource, 7, type: Google.Ads.Googleads.V8Availabilities.Resources.ChangeEvent.ChangedResource
  field :new_resource, 8, type: Google.Ads.Googleads.V8Availabilities.Resources.ChangeEvent.ChangedResource

  field :resource_change_operation, 9,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResourceChangeOperationEnum.ResourceChangeOperation,
    enum: true

  field :changed_fields, 10, type: Google.Protobuf.FieldMask
  field :campaign, 11, type: :string
  field :ad_group, 12, type: :string
  field :feed, 13, type: :string
  field :feed_item, 14, type: :string
end
