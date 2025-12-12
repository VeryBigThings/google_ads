defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :query, 2, type: :string
  field :page_token, 3, type: :string
  field :page_size, 4, type: :int32
  field :validate_only, 5, type: :bool
  field :return_total_results_count, 7, type: :bool

  field :summary_row_setting, 8,
    type: Google.Ads.Googleads.V4.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 1, repeated: true, type: Google.Ads.Googleads.V4.Services.GoogleAdsRow
  field :next_page_token, 2, type: :string
  field :total_results_count, 3, type: :int64
  field :field_mask, 5, type: Google.Protobuf.FieldMask
  field :summary_row, 6, type: Google.Ads.Googleads.V4.Services.GoogleAdsRow
end

defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :query, 2, type: :string

  field :summary_row_setting, 3,
    type: Google.Ads.Googleads.V4.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Services.SearchGoogleAdsStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 1, repeated: true, type: Google.Ads.Googleads.V4.Services.GoogleAdsRow
  field :field_mask, 2, type: Google.Protobuf.FieldMask
  field :summary_row, 3, type: Google.Ads.Googleads.V4.Services.GoogleAdsRow
end

defmodule Google.Ads.Googleads.V4.Services.GoogleAdsRow do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :account_budget, 42, type: Google.Ads.Googleads.V4.Resources.AccountBudget

  field :account_budget_proposal, 43,
    type: Google.Ads.Googleads.V4.Resources.AccountBudgetProposal

  field :account_link, 143, type: Google.Ads.Googleads.V4.Resources.AccountLink
  field :ad_group, 3, type: Google.Ads.Googleads.V4.Resources.AdGroup
  field :ad_group_ad, 16, type: Google.Ads.Googleads.V4.Resources.AdGroupAd
  field :ad_group_ad_asset_view, 131, type: Google.Ads.Googleads.V4.Resources.AdGroupAdAssetView
  field :ad_group_ad_label, 120, type: Google.Ads.Googleads.V4.Resources.AdGroupAdLabel
  field :ad_group_audience_view, 57, type: Google.Ads.Googleads.V4.Resources.AdGroupAudienceView
  field :ad_group_bid_modifier, 24, type: Google.Ads.Googleads.V4.Resources.AdGroupBidModifier
  field :ad_group_criterion, 17, type: Google.Ads.Googleads.V4.Resources.AdGroupCriterion

  field :ad_group_criterion_label, 121,
    type: Google.Ads.Googleads.V4.Resources.AdGroupCriterionLabel

  field :ad_group_criterion_simulation, 110,
    type: Google.Ads.Googleads.V4.Resources.AdGroupCriterionSimulation

  field :ad_group_extension_setting, 112,
    type: Google.Ads.Googleads.V4.Resources.AdGroupExtensionSetting

  field :ad_group_feed, 67, type: Google.Ads.Googleads.V4.Resources.AdGroupFeed
  field :ad_group_label, 115, type: Google.Ads.Googleads.V4.Resources.AdGroupLabel
  field :ad_group_simulation, 107, type: Google.Ads.Googleads.V4.Resources.AdGroupSimulation
  field :ad_parameter, 130, type: Google.Ads.Googleads.V4.Resources.AdParameter
  field :age_range_view, 48, type: Google.Ads.Googleads.V4.Resources.AgeRangeView
  field :ad_schedule_view, 89, type: Google.Ads.Googleads.V4.Resources.AdScheduleView
  field :domain_category, 91, type: Google.Ads.Googleads.V4.Resources.DomainCategory
  field :asset, 105, type: Google.Ads.Googleads.V4.Resources.Asset
  field :batch_job, 139, type: Google.Ads.Googleads.V4.Resources.BatchJob
  field :bidding_strategy, 18, type: Google.Ads.Googleads.V4.Resources.BiddingStrategy
  field :billing_setup, 41, type: Google.Ads.Googleads.V4.Resources.BillingSetup
  field :campaign_budget, 19, type: Google.Ads.Googleads.V4.Resources.CampaignBudget
  field :campaign, 2, type: Google.Ads.Googleads.V4.Resources.Campaign
  field :campaign_audience_view, 69, type: Google.Ads.Googleads.V4.Resources.CampaignAudienceView
  field :campaign_bid_modifier, 26, type: Google.Ads.Googleads.V4.Resources.CampaignBidModifier
  field :campaign_criterion, 20, type: Google.Ads.Googleads.V4.Resources.CampaignCriterion

  field :campaign_criterion_simulation, 111,
    type: Google.Ads.Googleads.V4.Resources.CampaignCriterionSimulation

  field :campaign_draft, 49, type: Google.Ads.Googleads.V4.Resources.CampaignDraft
  field :campaign_experiment, 84, type: Google.Ads.Googleads.V4.Resources.CampaignExperiment

  field :campaign_extension_setting, 113,
    type: Google.Ads.Googleads.V4.Resources.CampaignExtensionSetting

  field :campaign_feed, 63, type: Google.Ads.Googleads.V4.Resources.CampaignFeed
  field :campaign_label, 108, type: Google.Ads.Googleads.V4.Resources.CampaignLabel
  field :campaign_shared_set, 30, type: Google.Ads.Googleads.V4.Resources.CampaignSharedSet
  field :carrier_constant, 66, type: Google.Ads.Googleads.V4.Resources.CarrierConstant
  field :change_status, 37, type: Google.Ads.Googleads.V4.Resources.ChangeStatus
  field :conversion_action, 103, type: Google.Ads.Googleads.V4.Resources.ConversionAction
  field :click_view, 122, type: Google.Ads.Googleads.V4.Resources.ClickView
  field :currency_constant, 134, type: Google.Ads.Googleads.V4.Resources.CurrencyConstant
  field :custom_interest, 104, type: Google.Ads.Googleads.V4.Resources.CustomInterest
  field :customer, 1, type: Google.Ads.Googleads.V4.Resources.Customer
  field :customer_manager_link, 61, type: Google.Ads.Googleads.V4.Resources.CustomerManagerLink
  field :customer_client_link, 62, type: Google.Ads.Googleads.V4.Resources.CustomerClientLink
  field :customer_client, 70, type: Google.Ads.Googleads.V4.Resources.CustomerClient

  field :customer_extension_setting, 114,
    type: Google.Ads.Googleads.V4.Resources.CustomerExtensionSetting

  field :customer_feed, 64, type: Google.Ads.Googleads.V4.Resources.CustomerFeed
  field :customer_label, 124, type: Google.Ads.Googleads.V4.Resources.CustomerLabel

  field :customer_negative_criterion, 88,
    type: Google.Ads.Googleads.V4.Resources.CustomerNegativeCriterion

  field :detail_placement_view, 118, type: Google.Ads.Googleads.V4.Resources.DetailPlacementView
  field :display_keyword_view, 47, type: Google.Ads.Googleads.V4.Resources.DisplayKeywordView
  field :distance_view, 132, type: Google.Ads.Googleads.V4.Resources.DistanceView

  field :dynamic_search_ads_search_term_view, 106,
    type: Google.Ads.Googleads.V4.Resources.DynamicSearchAdsSearchTermView

  field :expanded_landing_page_view, 128,
    type: Google.Ads.Googleads.V4.Resources.ExpandedLandingPageView

  field :extension_feed_item, 85, type: Google.Ads.Googleads.V4.Resources.ExtensionFeedItem
  field :feed, 46, type: Google.Ads.Googleads.V4.Resources.Feed
  field :feed_item, 50, type: Google.Ads.Googleads.V4.Resources.FeedItem
  field :feed_item_target, 116, type: Google.Ads.Googleads.V4.Resources.FeedItemTarget
  field :feed_mapping, 58, type: Google.Ads.Googleads.V4.Resources.FeedMapping
  field :feed_placeholder_view, 97, type: Google.Ads.Googleads.V4.Resources.FeedPlaceholderView
  field :gender_view, 40, type: Google.Ads.Googleads.V4.Resources.GenderView
  field :geo_target_constant, 23, type: Google.Ads.Googleads.V4.Resources.GeoTargetConstant
  field :geographic_view, 125, type: Google.Ads.Googleads.V4.Resources.GeographicView
  field :group_placement_view, 119, type: Google.Ads.Googleads.V4.Resources.GroupPlacementView
  field :hotel_group_view, 51, type: Google.Ads.Googleads.V4.Resources.HotelGroupView
  field :hotel_performance_view, 71, type: Google.Ads.Googleads.V4.Resources.HotelPerformanceView
  field :income_range_view, 138, type: Google.Ads.Googleads.V4.Resources.IncomeRangeView
  field :keyword_view, 21, type: Google.Ads.Googleads.V4.Resources.KeywordView
  field :keyword_plan, 32, type: Google.Ads.Googleads.V4.Resources.KeywordPlan
  field :keyword_plan_campaign, 33, type: Google.Ads.Googleads.V4.Resources.KeywordPlanCampaign

  field :keyword_plan_campaign_keyword, 140,
    type: Google.Ads.Googleads.V4.Resources.KeywordPlanCampaignKeyword

  field :keyword_plan_ad_group, 35, type: Google.Ads.Googleads.V4.Resources.KeywordPlanAdGroup

  field :keyword_plan_ad_group_keyword, 141,
    type: Google.Ads.Googleads.V4.Resources.KeywordPlanAdGroupKeyword

  field :label, 52, type: Google.Ads.Googleads.V4.Resources.Label
  field :landing_page_view, 126, type: Google.Ads.Googleads.V4.Resources.LandingPageView
  field :language_constant, 55, type: Google.Ads.Googleads.V4.Resources.LanguageConstant
  field :location_view, 123, type: Google.Ads.Googleads.V4.Resources.LocationView
  field :managed_placement_view, 53, type: Google.Ads.Googleads.V4.Resources.ManagedPlacementView
  field :media_file, 90, type: Google.Ads.Googleads.V4.Resources.MediaFile

  field :mobile_app_category_constant, 87,
    type: Google.Ads.Googleads.V4.Resources.MobileAppCategoryConstant

  field :mobile_device_constant, 98, type: Google.Ads.Googleads.V4.Resources.MobileDeviceConstant
  field :offline_user_data_job, 137, type: Google.Ads.Googleads.V4.Resources.OfflineUserDataJob

  field :operating_system_version_constant, 86,
    type: Google.Ads.Googleads.V4.Resources.OperatingSystemVersionConstant

  field :paid_organic_search_term_view, 129,
    type: Google.Ads.Googleads.V4.Resources.PaidOrganicSearchTermView

  field :parental_status_view, 45, type: Google.Ads.Googleads.V4.Resources.ParentalStatusView

  field :product_bidding_category_constant, 109,
    type: Google.Ads.Googleads.V4.Resources.ProductBiddingCategoryConstant

  field :product_group_view, 54, type: Google.Ads.Googleads.V4.Resources.ProductGroupView
  field :recommendation, 22, type: Google.Ads.Googleads.V4.Resources.Recommendation
  field :search_term_view, 68, type: Google.Ads.Googleads.V4.Resources.SearchTermView
  field :shared_criterion, 29, type: Google.Ads.Googleads.V4.Resources.SharedCriterion
  field :shared_set, 27, type: Google.Ads.Googleads.V4.Resources.SharedSet

  field :shopping_performance_view, 117,
    type: Google.Ads.Googleads.V4.Resources.ShoppingPerformanceView

  field :third_party_app_analytics_link, 144,
    type: Google.Ads.Googleads.V4.Resources.ThirdPartyAppAnalyticsLink

  field :topic_view, 44, type: Google.Ads.Googleads.V4.Resources.TopicView
  field :user_interest, 59, type: Google.Ads.Googleads.V4.Resources.UserInterest
  field :user_list, 38, type: Google.Ads.Googleads.V4.Resources.UserList
  field :user_location_view, 135, type: Google.Ads.Googleads.V4.Resources.UserLocationView
  field :remarketing_action, 60, type: Google.Ads.Googleads.V4.Resources.RemarketingAction
  field :topic_constant, 31, type: Google.Ads.Googleads.V4.Resources.TopicConstant
  field :video, 39, type: Google.Ads.Googleads.V4.Resources.Video
  field :metrics, 4, type: Google.Ads.Googleads.V4.Common.Metrics
  field :segments, 102, type: Google.Ads.Googleads.V4.Common.Segments
end

defmodule Google.Ads.Googleads.V4.Services.MutateGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :mutate_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.MutateGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :mutate_operation_responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateOperationResponse
end

defmodule Google.Ads.Googleads.V4.Services.MutateOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :ad_group_ad_label_operation, 17,
    type: Google.Ads.Googleads.V4.Services.AdGroupAdLabelOperation,
    oneof: 0

  field :ad_group_ad_operation, 1,
    type: Google.Ads.Googleads.V4.Services.AdGroupAdOperation,
    oneof: 0

  field :ad_group_bid_modifier_operation, 2,
    type: Google.Ads.Googleads.V4.Services.AdGroupBidModifierOperation,
    oneof: 0

  field :ad_group_criterion_label_operation, 18,
    type: Google.Ads.Googleads.V4.Services.AdGroupCriterionLabelOperation,
    oneof: 0

  field :ad_group_criterion_operation, 3,
    type: Google.Ads.Googleads.V4.Services.AdGroupCriterionOperation,
    oneof: 0

  field :ad_group_extension_setting_operation, 19,
    type: Google.Ads.Googleads.V4.Services.AdGroupExtensionSettingOperation,
    oneof: 0

  field :ad_group_feed_operation, 20,
    type: Google.Ads.Googleads.V4.Services.AdGroupFeedOperation,
    oneof: 0

  field :ad_group_label_operation, 21,
    type: Google.Ads.Googleads.V4.Services.AdGroupLabelOperation,
    oneof: 0

  field :ad_group_operation, 5, type: Google.Ads.Googleads.V4.Services.AdGroupOperation, oneof: 0
  field :ad_operation, 49, type: Google.Ads.Googleads.V4.Services.AdOperation, oneof: 0

  field :ad_parameter_operation, 22,
    type: Google.Ads.Googleads.V4.Services.AdParameterOperation,
    oneof: 0

  field :asset_operation, 23, type: Google.Ads.Googleads.V4.Services.AssetOperation, oneof: 0

  field :bidding_strategy_operation, 6,
    type: Google.Ads.Googleads.V4.Services.BiddingStrategyOperation,
    oneof: 0

  field :campaign_bid_modifier_operation, 7,
    type: Google.Ads.Googleads.V4.Services.CampaignBidModifierOperation,
    oneof: 0

  field :campaign_budget_operation, 8,
    type: Google.Ads.Googleads.V4.Services.CampaignBudgetOperation,
    oneof: 0

  field :campaign_criterion_operation, 13,
    type: Google.Ads.Googleads.V4.Services.CampaignCriterionOperation,
    oneof: 0

  field :campaign_draft_operation, 24,
    type: Google.Ads.Googleads.V4.Services.CampaignDraftOperation,
    oneof: 0

  field :campaign_experiment_operation, 25,
    type: Google.Ads.Googleads.V4.Services.CampaignExperimentOperation,
    oneof: 0

  field :campaign_extension_setting_operation, 26,
    type: Google.Ads.Googleads.V4.Services.CampaignExtensionSettingOperation,
    oneof: 0

  field :campaign_feed_operation, 27,
    type: Google.Ads.Googleads.V4.Services.CampaignFeedOperation,
    oneof: 0

  field :campaign_label_operation, 28,
    type: Google.Ads.Googleads.V4.Services.CampaignLabelOperation,
    oneof: 0

  field :campaign_operation, 10,
    type: Google.Ads.Googleads.V4.Services.CampaignOperation,
    oneof: 0

  field :campaign_shared_set_operation, 11,
    type: Google.Ads.Googleads.V4.Services.CampaignSharedSetOperation,
    oneof: 0

  field :conversion_action_operation, 12,
    type: Google.Ads.Googleads.V4.Services.ConversionActionOperation,
    oneof: 0

  field :customer_extension_setting_operation, 30,
    type: Google.Ads.Googleads.V4.Services.CustomerExtensionSettingOperation,
    oneof: 0

  field :customer_feed_operation, 31,
    type: Google.Ads.Googleads.V4.Services.CustomerFeedOperation,
    oneof: 0

  field :customer_label_operation, 32,
    type: Google.Ads.Googleads.V4.Services.CustomerLabelOperation,
    oneof: 0

  field :customer_negative_criterion_operation, 34,
    type: Google.Ads.Googleads.V4.Services.CustomerNegativeCriterionOperation,
    oneof: 0

  field :customer_operation, 35,
    type: Google.Ads.Googleads.V4.Services.CustomerOperation,
    oneof: 0

  field :extension_feed_item_operation, 36,
    type: Google.Ads.Googleads.V4.Services.ExtensionFeedItemOperation,
    oneof: 0

  field :feed_item_operation, 37,
    type: Google.Ads.Googleads.V4.Services.FeedItemOperation,
    oneof: 0

  field :feed_item_target_operation, 38,
    type: Google.Ads.Googleads.V4.Services.FeedItemTargetOperation,
    oneof: 0

  field :feed_mapping_operation, 39,
    type: Google.Ads.Googleads.V4.Services.FeedMappingOperation,
    oneof: 0

  field :feed_operation, 40, type: Google.Ads.Googleads.V4.Services.FeedOperation, oneof: 0

  field :keyword_plan_ad_group_operation, 44,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupOperation,
    oneof: 0

  field :keyword_plan_ad_group_keyword_operation, 50,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupKeywordOperation,
    oneof: 0

  field :keyword_plan_campaign_keyword_operation, 51,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignKeywordOperation,
    oneof: 0

  field :keyword_plan_campaign_operation, 45,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignOperation,
    oneof: 0

  field :keyword_plan_operation, 48,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanOperation,
    oneof: 0

  field :label_operation, 41, type: Google.Ads.Googleads.V4.Services.LabelOperation, oneof: 0

  field :media_file_operation, 42,
    type: Google.Ads.Googleads.V4.Services.MediaFileOperation,
    oneof: 0

  field :remarketing_action_operation, 43,
    type: Google.Ads.Googleads.V4.Services.RemarketingActionOperation,
    oneof: 0

  field :shared_criterion_operation, 14,
    type: Google.Ads.Googleads.V4.Services.SharedCriterionOperation,
    oneof: 0

  field :shared_set_operation, 15,
    type: Google.Ads.Googleads.V4.Services.SharedSetOperation,
    oneof: 0

  field :user_list_operation, 16,
    type: Google.Ads.Googleads.V4.Services.UserListOperation,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :response, 0

  field :ad_group_ad_label_result, 17,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupAdLabelResult,
    oneof: 0

  field :ad_group_ad_result, 1,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupAdResult,
    oneof: 0

  field :ad_group_bid_modifier_result, 2,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupBidModifierResult,
    oneof: 0

  field :ad_group_criterion_label_result, 18,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupCriterionLabelResult,
    oneof: 0

  field :ad_group_criterion_result, 3,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupCriterionResult,
    oneof: 0

  field :ad_group_extension_setting_result, 19,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupExtensionSettingResult,
    oneof: 0

  field :ad_group_feed_result, 20,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupFeedResult,
    oneof: 0

  field :ad_group_label_result, 21,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupLabelResult,
    oneof: 0

  field :ad_group_result, 5, type: Google.Ads.Googleads.V4.Services.MutateAdGroupResult, oneof: 0

  field :ad_parameter_result, 22,
    type: Google.Ads.Googleads.V4.Services.MutateAdParameterResult,
    oneof: 0

  field :ad_result, 49, type: Google.Ads.Googleads.V4.Services.MutateAdResult, oneof: 0
  field :asset_result, 23, type: Google.Ads.Googleads.V4.Services.MutateAssetResult, oneof: 0

  field :bidding_strategy_result, 6,
    type: Google.Ads.Googleads.V4.Services.MutateBiddingStrategyResult,
    oneof: 0

  field :campaign_bid_modifier_result, 7,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignBidModifierResult,
    oneof: 0

  field :campaign_budget_result, 8,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignBudgetResult,
    oneof: 0

  field :campaign_criterion_result, 13,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignCriterionResult,
    oneof: 0

  field :campaign_draft_result, 24,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignDraftResult,
    oneof: 0

  field :campaign_experiment_result, 25,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignExperimentResult,
    oneof: 0

  field :campaign_extension_setting_result, 26,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignExtensionSettingResult,
    oneof: 0

  field :campaign_feed_result, 27,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignFeedResult,
    oneof: 0

  field :campaign_label_result, 28,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignLabelResult,
    oneof: 0

  field :campaign_result, 10,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignResult,
    oneof: 0

  field :campaign_shared_set_result, 11,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignSharedSetResult,
    oneof: 0

  field :conversion_action_result, 12,
    type: Google.Ads.Googleads.V4.Services.MutateConversionActionResult,
    oneof: 0

  field :customer_extension_setting_result, 30,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingResult,
    oneof: 0

  field :customer_feed_result, 31,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerFeedResult,
    oneof: 0

  field :customer_label_result, 32,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerLabelResult,
    oneof: 0

  field :customer_negative_criterion_result, 34,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerNegativeCriteriaResult,
    oneof: 0

  field :customer_result, 35,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerResult,
    oneof: 0

  field :extension_feed_item_result, 36,
    type: Google.Ads.Googleads.V4.Services.MutateExtensionFeedItemResult,
    oneof: 0

  field :feed_item_result, 37,
    type: Google.Ads.Googleads.V4.Services.MutateFeedItemResult,
    oneof: 0

  field :feed_item_target_result, 38,
    type: Google.Ads.Googleads.V4.Services.MutateFeedItemTargetResult,
    oneof: 0

  field :feed_mapping_result, 39,
    type: Google.Ads.Googleads.V4.Services.MutateFeedMappingResult,
    oneof: 0

  field :feed_result, 40, type: Google.Ads.Googleads.V4.Services.MutateFeedResult, oneof: 0

  field :keyword_plan_ad_group_result, 44,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanAdGroupResult,
    oneof: 0

  field :keyword_plan_campaign_result, 45,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignResult,
    oneof: 0

  field :keyword_plan_ad_group_keyword_result, 50,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanAdGroupKeywordResult,
    oneof: 0

  field :keyword_plan_campaign_keyword_result, 51,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignKeywordResult,
    oneof: 0

  field :keyword_plan_result, 48,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlansResult,
    oneof: 0

  field :label_result, 41, type: Google.Ads.Googleads.V4.Services.MutateLabelResult, oneof: 0

  field :media_file_result, 42,
    type: Google.Ads.Googleads.V4.Services.MutateMediaFileResult,
    oneof: 0

  field :remarketing_action_result, 43,
    type: Google.Ads.Googleads.V4.Services.MutateRemarketingActionResult,
    oneof: 0

  field :shared_criterion_result, 14,
    type: Google.Ads.Googleads.V4.Services.MutateSharedCriterionResult,
    oneof: 0

  field :shared_set_result, 15,
    type: Google.Ads.Googleads.V4.Services.MutateSharedSetResult,
    oneof: 0

  field :user_list_result, 16,
    type: Google.Ads.Googleads.V4.Services.MutateUserListResult,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.GoogleAdsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.GoogleAdsService"

  rpc :Search,
      Google.Ads.Googleads.V4.Services.SearchGoogleAdsRequest,
      Google.Ads.Googleads.V4.Services.SearchGoogleAdsResponse

  rpc :SearchStream,
      Google.Ads.Googleads.V4.Services.SearchGoogleAdsStreamRequest,
      stream(Google.Ads.Googleads.V4.Services.SearchGoogleAdsStreamResponse)

  rpc :Mutate,
      Google.Ads.Googleads.V4.Services.MutateGoogleAdsRequest,
      Google.Ads.Googleads.V4.Services.MutateGoogleAdsResponse
end

defmodule Google.Ads.Googleads.V4.Services.GoogleAdsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.GoogleAdsService.Service
end
