defmodule Google.Ads.Googleads.V4.Resources.Recommendation.RecommendationImpact do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :base_metrics, 1,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.RecommendationMetrics

  field :potential_metrics, 2,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.RecommendationMetrics
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.RecommendationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :impressions, 1, type: Google.Protobuf.DoubleValue
  field :clicks, 2, type: Google.Protobuf.DoubleValue
  field :cost_micros, 3, type: Google.Protobuf.Int64Value
  field :conversions, 4, type: Google.Protobuf.DoubleValue
  field :video_views, 5, type: Google.Protobuf.DoubleValue
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :budget_amount_micros, 1, type: Google.Protobuf.Int64Value
  field :impact, 2, type: Google.Ads.Googleads.V4.Resources.Recommendation.RecommendationImpact
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.CampaignBudgetRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :current_budget_amount_micros, 1, type: Google.Protobuf.Int64Value
  field :recommended_budget_amount_micros, 2, type: Google.Protobuf.Int64Value

  field :budget_options, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V4.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.KeywordRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword, 1, type: Google.Ads.Googleads.V4.Common.KeywordInfo
  field :recommended_cpc_bid_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.CallExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CallFeedItem
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.TextAdRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad, 1, type: Google.Ads.Googleads.V4.Resources.Ad
  field :creation_date, 2, type: Google.Protobuf.StringValue
  field :auto_apply_date, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.KeywordMatchTypeRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword, 1, type: Google.Ads.Googleads.V4.Common.KeywordInfo

  field :recommended_match_type, 2,
    type: Google.Ads.Googleads.V4.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :goal, 1,
    type:
      Google.Ads.Googleads.V4.Enums.TargetCpaOptInRecommendationGoalEnum.TargetCpaOptInRecommendationGoal,
    enum: true

  field :target_cpa_micros, 2, type: Google.Protobuf.Int64Value
  field :required_campaign_budget_amount_micros, 3, type: Google.Protobuf.Int64Value
  field :impact, 4, type: Google.Ads.Googleads.V4.Resources.Recommendation.RecommendationImpact
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.TargetCpaOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :options, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V4.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption

  field :recommended_target_cpa_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.MaximizeConversionsOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :recommended_budget_amount_micros, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.SitelinkExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.SitelinkFeedItem
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.EnhancedCpcOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.SearchPartnersOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.MaximizeClicksOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :recommended_budget_amount_micros, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.OptimizeAdRotationRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.CalloutExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CalloutFeedItem
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation.MoveUnusedBudgetRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :excess_campaign_budget, 1, type: Google.Protobuf.StringValue

  field :budget_recommendation, 2,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.CampaignBudgetRecommendation
end

defmodule Google.Ads.Googleads.V4.Resources.Recommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :recommendation, 0

  field :resource_name, 1, type: :string

  field :type, 2,
    type: Google.Ads.Googleads.V4.Enums.RecommendationTypeEnum.RecommendationType,
    enum: true

  field :impact, 3, type: Google.Ads.Googleads.V4.Resources.Recommendation.RecommendationImpact
  field :campaign_budget, 5, type: Google.Protobuf.StringValue
  field :campaign, 6, type: Google.Protobuf.StringValue
  field :ad_group, 7, type: Google.Protobuf.StringValue
  field :dismissed, 13, type: Google.Protobuf.BoolValue

  field :campaign_budget_recommendation, 4,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.CampaignBudgetRecommendation,
    oneof: 0

  field :keyword_recommendation, 8,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.KeywordRecommendation,
    oneof: 0

  field :text_ad_recommendation, 9,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.TextAdRecommendation,
    oneof: 0

  field :target_cpa_opt_in_recommendation, 10,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.TargetCpaOptInRecommendation,
    oneof: 0

  field :maximize_conversions_opt_in_recommendation, 11,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.MaximizeConversionsOptInRecommendation,
    oneof: 0

  field :enhanced_cpc_opt_in_recommendation, 12,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.EnhancedCpcOptInRecommendation,
    oneof: 0

  field :search_partners_opt_in_recommendation, 14,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.SearchPartnersOptInRecommendation,
    oneof: 0

  field :maximize_clicks_opt_in_recommendation, 15,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.MaximizeClicksOptInRecommendation,
    oneof: 0

  field :optimize_ad_rotation_recommendation, 16,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.OptimizeAdRotationRecommendation,
    oneof: 0

  field :callout_extension_recommendation, 17,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.CalloutExtensionRecommendation,
    oneof: 0

  field :sitelink_extension_recommendation, 18,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.SitelinkExtensionRecommendation,
    oneof: 0

  field :call_extension_recommendation, 19,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.CallExtensionRecommendation,
    oneof: 0

  field :keyword_match_type_recommendation, 20,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.KeywordMatchTypeRecommendation,
    oneof: 0

  field :move_unused_budget_recommendation, 21,
    type: Google.Ads.Googleads.V4.Resources.Recommendation.MoveUnusedBudgetRecommendation,
    oneof: 0
end
