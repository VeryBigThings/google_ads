defmodule Google.Ads.Googleads.V7.Resources.ChangeEvent.ChangedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad, 1, type: Google.Ads.Googleads.V7.Resources.Ad
  field :ad_group, 2, type: Google.Ads.Googleads.V7.Resources.AdGroup
  field :ad_group_criterion, 3, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion
  field :campaign, 4, type: Google.Ads.Googleads.V7.Resources.Campaign
  field :campaign_budget, 5, type: Google.Ads.Googleads.V7.Resources.CampaignBudget
  field :ad_group_bid_modifier, 6, type: Google.Ads.Googleads.V7.Resources.AdGroupBidModifier
  field :campaign_criterion, 7, type: Google.Ads.Googleads.V7.Resources.CampaignCriterion
  field :feed, 8, type: Google.Ads.Googleads.V7.Resources.Feed
  field :feed_item, 9, type: Google.Ads.Googleads.V7.Resources.FeedItem
  field :campaign_feed, 10, type: Google.Ads.Googleads.V7.Resources.CampaignFeed
  field :ad_group_feed, 11, type: Google.Ads.Googleads.V7.Resources.AdGroupFeed
  field :ad_group_ad, 12, type: Google.Ads.Googleads.V7.Resources.AdGroupAd
end

defmodule Google.Ads.Googleads.V7.Resources.ChangeEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :change_date_time, 2, type: :string

  field :change_resource_type, 3,
    type: Google.Ads.Googleads.V7.Enums.ChangeEventResourceTypeEnum.ChangeEventResourceType,
    enum: true

  field :change_resource_name, 4, type: :string

  field :client_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ChangeClientTypeEnum.ChangeClientType,
    enum: true

  field :user_email, 6, type: :string
  field :old_resource, 7, type: Google.Ads.Googleads.V7.Resources.ChangeEvent.ChangedResource
  field :new_resource, 8, type: Google.Ads.Googleads.V7.Resources.ChangeEvent.ChangedResource

  field :resource_change_operation, 9,
    type: Google.Ads.Googleads.V7.Enums.ResourceChangeOperationEnum.ResourceChangeOperation,
    enum: true

  field :changed_fields, 10, type: Google.Protobuf.FieldMask
  field :campaign, 11, type: :string
  field :ad_group, 12, type: :string
  field :feed, 13, type: :string
  field :feed_item, 14, type: :string
end
