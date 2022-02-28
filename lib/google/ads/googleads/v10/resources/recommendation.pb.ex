defmodule Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationImpact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_metrics:
            Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationMetrics.t() | nil,
          potential_metrics:
            Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationMetrics.t() | nil
        }

  defstruct base_metrics: nil,
            potential_metrics: nil

  field :base_metrics, 1,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationMetrics,
    json_name: "baseMetrics",
    deprecated: false

  field :potential_metrics, 2,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationMetrics,
    json_name: "potentialMetrics",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: float | :infinity | :negative_infinity | :nan,
          clicks: float | :infinity | :negative_infinity | :nan,
          cost_micros: integer,
          conversions: float | :infinity | :negative_infinity | :nan,
          video_views: float | :infinity | :negative_infinity | :nan
        }

  defstruct impressions: 0.0,
            clicks: 0.0,
            cost_micros: 0,
            conversions: 0.0,
            video_views: 0.0

  field :impressions, 6, type: :double, deprecated: false
  field :clicks, 7, type: :double, deprecated: false
  field :cost_micros, 8, type: :int64, json_name: "costMicros", deprecated: false
  field :conversions, 9, type: :double, deprecated: false
  field :video_views, 10, type: :double, json_name: "videoViews", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          budget_amount_micros: integer,
          impact: Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationImpact.t() | nil
        }

  defstruct budget_amount_micros: 0,
            impact: nil

  field :budget_amount_micros, 3, type: :int64, json_name: "budgetAmountMicros", deprecated: false

  field :impact, 2,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationImpact,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_budget_amount_micros: integer,
          recommended_budget_amount_micros: integer,
          budget_options: [
            Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption.t()
          ]
        }

  defstruct current_budget_amount_micros: 0,
            recommended_budget_amount_micros: 0,
            budget_options: []

  field :current_budget_amount_micros, 7,
    type: :int64,
    json_name: "currentBudgetAmountMicros",
    deprecated: false

  field :recommended_budget_amount_micros, 8,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false

  field :budget_options, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation.CampaignBudgetRecommendationOption,
    json_name: "budgetOptions",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.KeywordRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword: Google.Ads.Googleads.V10.Common.KeywordInfo.t() | nil,
          recommended_cpc_bid_micros: integer
        }

  defstruct keyword: nil,
            recommended_cpc_bid_micros: 0

  field :keyword, 1, type: Google.Ads.Googleads.V10.Common.KeywordInfo, deprecated: false

  field :recommended_cpc_bid_micros, 3,
    type: :int64,
    json_name: "recommendedCpcBidMicros",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.TextAdRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V10.Resources.Ad.t() | nil,
          creation_date: String.t(),
          auto_apply_date: String.t()
        }

  defstruct ad: nil,
            creation_date: "",
            auto_apply_date: ""

  field :ad, 1, type: Google.Ads.Googleads.V10.Resources.Ad, deprecated: false
  field :creation_date, 4, type: :string, json_name: "creationDate", deprecated: false
  field :auto_apply_date, 5, type: :string, json_name: "autoApplyDate", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          goal:
            Google.Ads.Googleads.V10.Enums.TargetCpaOptInRecommendationGoalEnum.TargetCpaOptInRecommendationGoal.t(),
          target_cpa_micros: integer,
          required_campaign_budget_amount_micros: integer,
          impact: Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationImpact.t() | nil
        }

  defstruct goal: :UNSPECIFIED,
            target_cpa_micros: 0,
            required_campaign_budget_amount_micros: 0,
            impact: nil

  field :goal, 1,
    type:
      Google.Ads.Googleads.V10.Enums.TargetCpaOptInRecommendationGoalEnum.TargetCpaOptInRecommendationGoal,
    enum: true,
    deprecated: false

  field :target_cpa_micros, 5, type: :int64, json_name: "targetCpaMicros", deprecated: false

  field :required_campaign_budget_amount_micros, 6,
    type: :int64,
    json_name: "requiredCampaignBudgetAmountMicros",
    deprecated: false

  field :impact, 4,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationImpact,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.TargetCpaOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          options: [
            Google.Ads.Googleads.V10.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption.t()
          ],
          recommended_target_cpa_micros: integer
        }

  defstruct options: [],
            recommended_target_cpa_micros: 0

  field :options, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V10.Resources.Recommendation.TargetCpaOptInRecommendation.TargetCpaOptInRecommendationOption,
    deprecated: false

  field :recommended_target_cpa_micros, 3,
    type: :int64,
    json_name: "recommendedTargetCpaMicros",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.MaximizeConversionsOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommended_budget_amount_micros: integer
        }

  defstruct recommended_budget_amount_micros: 0

  field :recommended_budget_amount_micros, 2,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.EnhancedCpcOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.SearchPartnersOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.MaximizeClicksOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommended_budget_amount_micros: integer
        }

  defstruct recommended_budget_amount_micros: 0

  field :recommended_budget_amount_micros, 2,
    type: :int64,
    json_name: "recommendedBudgetAmountMicros",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.OptimizeAdRotationRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.CalloutExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommended_extensions: [Google.Ads.Googleads.V10.Common.CalloutFeedItem.t()]
        }

  defstruct recommended_extensions: []

  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.CalloutFeedItem,
    json_name: "recommendedExtensions",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.SitelinkExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommended_extensions: [Google.Ads.Googleads.V10.Common.SitelinkFeedItem.t()]
        }

  defstruct recommended_extensions: []

  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.SitelinkFeedItem,
    json_name: "recommendedExtensions",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.CallExtensionRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommended_extensions: [Google.Ads.Googleads.V10.Common.CallFeedItem.t()]
        }

  defstruct recommended_extensions: []

  field :recommended_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.CallFeedItem,
    json_name: "recommendedExtensions",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.KeywordMatchTypeRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword: Google.Ads.Googleads.V10.Common.KeywordInfo.t() | nil,
          recommended_match_type:
            Google.Ads.Googleads.V10.Enums.KeywordMatchTypeEnum.KeywordMatchType.t()
        }

  defstruct keyword: nil,
            recommended_match_type: :UNSPECIFIED

  field :keyword, 1, type: Google.Ads.Googleads.V10.Common.KeywordInfo, deprecated: false

  field :recommended_match_type, 2,
    type: Google.Ads.Googleads.V10.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "recommendedMatchType",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.MoveUnusedBudgetRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          excess_campaign_budget: String.t(),
          budget_recommendation:
            Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation.t()
            | nil
        }

  defstruct excess_campaign_budget: "",
            budget_recommendation: nil

  field :excess_campaign_budget, 3,
    type: :string,
    json_name: "excessCampaignBudget",
    deprecated: false

  field :budget_recommendation, 2,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "budgetRecommendation",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.TargetRoasOptInRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommended_target_roas: float | :infinity | :negative_infinity | :nan,
          required_campaign_budget_amount_micros: integer
        }

  defstruct recommended_target_roas: 0.0,
            required_campaign_budget_amount_micros: 0

  field :recommended_target_roas, 1,
    type: :double,
    json_name: "recommendedTargetRoas",
    deprecated: false

  field :required_campaign_budget_amount_micros, 2,
    type: :int64,
    json_name: "requiredCampaignBudgetAmountMicros",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.ResponsiveSearchAdAssetRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_ad: Google.Ads.Googleads.V10.Resources.Ad.t() | nil,
          recommended_assets: Google.Ads.Googleads.V10.Resources.Ad.t() | nil
        }

  defstruct current_ad: nil,
            recommended_assets: nil

  field :current_ad, 1,
    type: Google.Ads.Googleads.V10.Resources.Ad,
    json_name: "currentAd",
    deprecated: false

  field :recommended_assets, 2,
    type: Google.Ads.Googleads.V10.Resources.Ad,
    json_name: "recommendedAssets",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.ResponsiveSearchAdRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V10.Resources.Ad.t() | nil
        }

  defstruct ad: nil

  field :ad, 1, type: Google.Ads.Googleads.V10.Resources.Ad, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation.UseBroadMatchKeywordRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword: [Google.Ads.Googleads.V10.Common.KeywordInfo.t()],
          suggested_keywords_count: integer,
          campaign_keywords_count: integer,
          campaign_uses_shared_budget: boolean,
          required_campaign_budget_amount_micros: integer
        }

  defstruct keyword: [],
            suggested_keywords_count: 0,
            campaign_keywords_count: 0,
            campaign_uses_shared_budget: false,
            required_campaign_budget_amount_micros: 0

  field :keyword, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.KeywordInfo,
    deprecated: false

  field :suggested_keywords_count, 2,
    type: :int64,
    json_name: "suggestedKeywordsCount",
    deprecated: false

  field :campaign_keywords_count, 3,
    type: :int64,
    json_name: "campaignKeywordsCount",
    deprecated: false

  field :campaign_uses_shared_budget, 4,
    type: :bool,
    json_name: "campaignUsesSharedBudget",
    deprecated: false

  field :required_campaign_budget_amount_micros, 5,
    type: :int64,
    json_name: "requiredCampaignBudgetAmountMicros",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Recommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommendation:
            {:campaign_budget_recommendation,
             Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation.t()
             | nil}
            | {:forecasting_campaign_budget_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation.t()
               | nil}
            | {:keyword_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.KeywordRecommendation.t() | nil}
            | {:text_ad_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.TextAdRecommendation.t() | nil}
            | {:target_cpa_opt_in_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.TargetCpaOptInRecommendation.t()
               | nil}
            | {:maximize_conversions_opt_in_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.MaximizeConversionsOptInRecommendation.t()
               | nil}
            | {:enhanced_cpc_opt_in_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.EnhancedCpcOptInRecommendation.t()
               | nil}
            | {:search_partners_opt_in_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.SearchPartnersOptInRecommendation.t()
               | nil}
            | {:maximize_clicks_opt_in_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.MaximizeClicksOptInRecommendation.t()
               | nil}
            | {:optimize_ad_rotation_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.OptimizeAdRotationRecommendation.t()
               | nil}
            | {:callout_extension_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.CalloutExtensionRecommendation.t()
               | nil}
            | {:sitelink_extension_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.SitelinkExtensionRecommendation.t()
               | nil}
            | {:call_extension_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.CallExtensionRecommendation.t()
               | nil}
            | {:keyword_match_type_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.KeywordMatchTypeRecommendation.t()
               | nil}
            | {:move_unused_budget_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.MoveUnusedBudgetRecommendation.t()
               | nil}
            | {:target_roas_opt_in_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.TargetRoasOptInRecommendation.t()
               | nil}
            | {:responsive_search_ad_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.ResponsiveSearchAdRecommendation.t()
               | nil}
            | {:marginal_roi_campaign_budget_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation.t()
               | nil}
            | {:use_broad_match_keyword_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.UseBroadMatchKeywordRecommendation.t()
               | nil}
            | {:responsive_search_ad_asset_recommendation,
               Google.Ads.Googleads.V10.Resources.Recommendation.ResponsiveSearchAdAssetRecommendation.t()
               | nil},
          resource_name: String.t(),
          type: Google.Ads.Googleads.V10.Enums.RecommendationTypeEnum.RecommendationType.t(),
          impact:
            Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationImpact.t() | nil,
          campaign_budget: String.t(),
          campaign: String.t(),
          ad_group: String.t(),
          dismissed: boolean
        }

  defstruct recommendation: nil,
            resource_name: "",
            type: :UNSPECIFIED,
            impact: nil,
            campaign_budget: "",
            campaign: "",
            ad_group: "",
            dismissed: false

  oneof :recommendation, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :type, 2,
    type: Google.Ads.Googleads.V10.Enums.RecommendationTypeEnum.RecommendationType,
    enum: true,
    deprecated: false

  field :impact, 3,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.RecommendationImpact,
    deprecated: false

  field :campaign_budget, 24, type: :string, json_name: "campaignBudget", deprecated: false
  field :campaign, 25, type: :string, deprecated: false
  field :ad_group, 26, type: :string, json_name: "adGroup", deprecated: false
  field :dismissed, 27, type: :bool, deprecated: false

  field :campaign_budget_recommendation, 4,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "campaignBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :forecasting_campaign_budget_recommendation, 22,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "forecastingCampaignBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :keyword_recommendation, 8,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.KeywordRecommendation,
    json_name: "keywordRecommendation",
    oneof: 0,
    deprecated: false

  field :text_ad_recommendation, 9,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.TextAdRecommendation,
    json_name: "textAdRecommendation",
    oneof: 0,
    deprecated: false

  field :target_cpa_opt_in_recommendation, 10,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.TargetCpaOptInRecommendation,
    json_name: "targetCpaOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :maximize_conversions_opt_in_recommendation, 11,
    type:
      Google.Ads.Googleads.V10.Resources.Recommendation.MaximizeConversionsOptInRecommendation,
    json_name: "maximizeConversionsOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :enhanced_cpc_opt_in_recommendation, 12,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.EnhancedCpcOptInRecommendation,
    json_name: "enhancedCpcOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :search_partners_opt_in_recommendation, 14,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.SearchPartnersOptInRecommendation,
    json_name: "searchPartnersOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :maximize_clicks_opt_in_recommendation, 15,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.MaximizeClicksOptInRecommendation,
    json_name: "maximizeClicksOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :optimize_ad_rotation_recommendation, 16,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.OptimizeAdRotationRecommendation,
    json_name: "optimizeAdRotationRecommendation",
    oneof: 0,
    deprecated: false

  field :callout_extension_recommendation, 17,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.CalloutExtensionRecommendation,
    json_name: "calloutExtensionRecommendation",
    oneof: 0,
    deprecated: false

  field :sitelink_extension_recommendation, 18,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.SitelinkExtensionRecommendation,
    json_name: "sitelinkExtensionRecommendation",
    oneof: 0,
    deprecated: false

  field :call_extension_recommendation, 19,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.CallExtensionRecommendation,
    json_name: "callExtensionRecommendation",
    oneof: 0,
    deprecated: false

  field :keyword_match_type_recommendation, 20,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.KeywordMatchTypeRecommendation,
    json_name: "keywordMatchTypeRecommendation",
    oneof: 0,
    deprecated: false

  field :move_unused_budget_recommendation, 21,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.MoveUnusedBudgetRecommendation,
    json_name: "moveUnusedBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :target_roas_opt_in_recommendation, 23,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.TargetRoasOptInRecommendation,
    json_name: "targetRoasOptInRecommendation",
    oneof: 0,
    deprecated: false

  field :responsive_search_ad_recommendation, 28,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.ResponsiveSearchAdRecommendation,
    json_name: "responsiveSearchAdRecommendation",
    oneof: 0,
    deprecated: false

  field :marginal_roi_campaign_budget_recommendation, 29,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.CampaignBudgetRecommendation,
    json_name: "marginalRoiCampaignBudgetRecommendation",
    oneof: 0,
    deprecated: false

  field :use_broad_match_keyword_recommendation, 30,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.UseBroadMatchKeywordRecommendation,
    json_name: "useBroadMatchKeywordRecommendation",
    oneof: 0,
    deprecated: false

  field :responsive_search_ad_asset_recommendation, 31,
    type: Google.Ads.Googleads.V10.Resources.Recommendation.ResponsiveSearchAdAssetRecommendation,
    json_name: "responsiveSearchAdAssetRecommendation",
    oneof: 0,
    deprecated: false
end
