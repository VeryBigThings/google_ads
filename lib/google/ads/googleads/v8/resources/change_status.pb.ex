defmodule Google.Ads.Googleads.V8.Resources.ChangeStatus do
  @moduledoc false
  use Protobuf, syntax: :proto2



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
