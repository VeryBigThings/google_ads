defmodule Google.Ads.Googleads.V4.Resources.BiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :scheme, 0

  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue

  field :status, 15,
    type: Google.Ads.Googleads.V4.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus,
    enum: true

  field :type, 5,
    type: Google.Ads.Googleads.V4.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :campaign_count, 13, type: Google.Protobuf.Int64Value
  field :non_removed_campaign_count, 14, type: Google.Protobuf.Int64Value
  field :enhanced_cpc, 7, type: Google.Ads.Googleads.V4.Common.EnhancedCpc, oneof: 0
  field :target_cpa, 9, type: Google.Ads.Googleads.V4.Common.TargetCpa, oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V4.Common.TargetImpressionShare,
    oneof: 0

  field :target_roas, 11, type: Google.Ads.Googleads.V4.Common.TargetRoas, oneof: 0
  field :target_spend, 12, type: Google.Ads.Googleads.V4.Common.TargetSpend, oneof: 0
end
