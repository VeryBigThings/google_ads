defmodule Google.Ads.Googleads.V7.Resources.ChangeStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :last_change_date_time, 24, type: :string

  field :resource_type, 4,
    type: Google.Ads.Googleads.V7.Enums.ChangeStatusResourceTypeEnum.ChangeStatusResourceType,
    enum: true

  field :campaign, 17, type: :string
  field :ad_group, 18, type: :string

  field :resource_status, 8,
    type: Google.Ads.Googleads.V7.Enums.ChangeStatusOperationEnum.ChangeStatusOperation,
    enum: true

  field :ad_group_ad, 25, type: :string
  field :ad_group_criterion, 26, type: :string
  field :campaign_criterion, 27, type: :string
  field :feed, 28, type: :string
  field :feed_item, 29, type: :string
  field :ad_group_feed, 30, type: :string
  field :campaign_feed, 31, type: :string
  field :ad_group_bid_modifier, 32, type: :string
end
