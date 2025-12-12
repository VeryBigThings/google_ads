defmodule Google.Ads.Googleads.V8.Resources.Recommendation.RecommendationImpact do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :base_metrics, 1,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.RecommendationMetrics

  field :potential_metrics, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.RecommendationMetrics
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.RecommendationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :impressions, 6, optional: true, type: :double
  field :clicks, 7, optional: true, type: :double
  field :cost_micros, 8, optional: true, type: :int64
  field :conversions, 9, optional: true, type: :double
  field :video_views, 10, optional: true, type: :double
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :budget_amount_micros, 3, optional: true, type: :int64

  field :impact, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.RecommendationImpact
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.CampaignBudgetRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :current_budget_amount_micros, 7, optional: true, type: :int64
  field :recommended_budget_amount_micros, 8, optional: true, type: :int64

  field :budget_options, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.KeywordRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword, 1, required: true, type: Google.Ads.Googleads.V8.Common.KeywordInfo
  field :recommended_cpc_bid_micros, 3, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.EnhancedCpcOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.TextAdRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :ad, 1, required: true, type: Google.Ads.Googleads.V8.Resources.Ad
  field :creation_date, 4, optional: true, type: :string
  field :auto_apply_date, 5, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :goal, 1,
    required: true,
    type:
      Google.Ads.Googleads.V8.Enums.TargetCpaOptInRecommendationGoalEnum.TargetCpaOptInRecommendationGoal,
    enum: true

  field :target_cpa_micros, 5, optional: true, type: :int64
  field :required_campaign_budget_amount_micros, 6, optional: true, type: :int64

  field :impact, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.RecommendationImpact
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.TargetCpaOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :options, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption

  field :recommended_target_cpa_micros, 3, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.MaximizeConversionsOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :recommended_budget_amount_micros, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.TargetRoasOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :recommended_target_roas, 1, optional: true, type: :double
  field :required_campaign_budget_amount_micros, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.SearchPartnersOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.MaximizeClicksOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :recommended_budget_amount_micros, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.SitelinkExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.SitelinkFeedItem
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.ResponsiveSearchAdRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :ad, 1, required: true, type: Google.Ads.Googleads.V8.Resources.Ad
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.OptimizeAdRotationRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.CalloutExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CalloutFeedItem
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.CallExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CallFeedItem
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.KeywordMatchTypeRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword, 1, required: true, type: Google.Ads.Googleads.V8.Common.KeywordInfo

  field :recommended_match_type, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation.MoveUnusedBudgetRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :excess_campaign_budget, 3, optional: true, type: :string

  field :budget_recommendation, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.CampaignBudgetRecommendation
end

defmodule Google.Ads.Googleads.V8.Resources.Recommendation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :recommendation, 0
  field :resource_name, 1, optional: true, type: :string

  field :type, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.RecommendationTypeEnum.RecommendationType,
    enum: true

  field :impact, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.RecommendationImpact

  field :campaign_budget, 24, optional: true, type: :string
  field :campaign, 25, optional: true, type: :string
  field :ad_group, 26, optional: true, type: :string
  field :dismissed, 27, optional: true, type: :bool

  field :campaign_budget_recommendation, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.CampaignBudgetRecommendation,
    oneof: 0

  field :forecasting_campaign_budget_recommendation, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.CampaignBudgetRecommendation,
    oneof: 0

  field :keyword_recommendation, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.KeywordRecommendation,
    oneof: 0

  field :text_ad_recommendation, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.TextAdRecommendation,
    oneof: 0

  field :target_cpa_opt_in_recommendation, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.TargetCpaOptInRecommendation,
    oneof: 0

  field :maximize_conversions_opt_in_recommendation, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.MaximizeConversionsOptInRecommendation,
    oneof: 0

  field :enhanced_cpc_opt_in_recommendation, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.EnhancedCpcOptInRecommendation,
    oneof: 0

  field :search_partners_opt_in_recommendation, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.SearchPartnersOptInRecommendation,
    oneof: 0

  field :maximize_clicks_opt_in_recommendation, 15,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.MaximizeClicksOptInRecommendation,
    oneof: 0

  field :optimize_ad_rotation_recommendation, 16,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.OptimizeAdRotationRecommendation,
    oneof: 0

  field :callout_extension_recommendation, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.CalloutExtensionRecommendation,
    oneof: 0

  field :sitelink_extension_recommendation, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.SitelinkExtensionRecommendation,
    oneof: 0

  field :call_extension_recommendation, 19,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.CallExtensionRecommendation,
    oneof: 0

  field :keyword_match_type_recommendation, 20,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.KeywordMatchTypeRecommendation,
    oneof: 0

  field :move_unused_budget_recommendation, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.MoveUnusedBudgetRecommendation,
    oneof: 0

  field :target_roas_opt_in_recommendation, 23,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.TargetRoasOptInRecommendation,
    oneof: 0

  field :responsive_search_ad_recommendation, 28,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.ResponsiveSearchAdRecommendation,
    oneof: 0

  field :marginal_roi_campaign_budget_recommendation, 29,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation.CampaignBudgetRecommendation,
    oneof: 0
end
