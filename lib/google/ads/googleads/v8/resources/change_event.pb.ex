defmodule Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :ad, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.Ad
  field :ad_group, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroup

  field :ad_group_criterion, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupCriterion

  field :campaign, 4, optional: true, type: Google.Ads.Googleads.V8.Resources.Campaign

  field :campaign_budget, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBudget

  field :ad_group_bid_modifier, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupBidModifier

  field :campaign_criterion, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignCriterion

  field :feed, 8, optional: true, type: Google.Ads.Googleads.V8.Resources.Feed
  field :feed_item, 9, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedItem
  field :campaign_feed, 10, optional: true, type: Google.Ads.Googleads.V8.Resources.CampaignFeed
  field :ad_group_feed, 11, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupFeed
  field :ad_group_ad, 12, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupAd
end

defmodule Google.Ads.Googleads.V8.Resources.ChangeEvent do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :change_date_time, 2, optional: true, type: :string

  field :change_resource_type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType,
    enum: true

  field :change_resource_name, 4, optional: true, type: :string

  field :client_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ChangeClientTypeEnum.ChangeClientType,
    enum: true

  field :user_email, 6, optional: true, type: :string

  field :old_resource, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource

  field :new_resource, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ChangeEvent.ChangedResource

  field :resource_change_operation, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResourceChangeOperationEnum.ResourceChangeOperation,
    enum: true

  field :changed_fields, 10, optional: true, type: Google.Protobuf.FieldMask
  field :campaign, 11, optional: true, type: :string
  field :ad_group, 12, optional: true, type: :string
  field :feed, 13, optional: true, type: :string
  field :feed_item, 14, optional: true, type: :string
end
