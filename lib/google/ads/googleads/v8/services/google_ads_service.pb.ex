defmodule Google.Ads.Googleads.V8.Services.SearchGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :query, 2, required: true, type: :string
  field :page_token, 3, optional: true, type: :string
  field :page_size, 4, optional: true, type: :int32
  field :validate_only, 5, optional: true, type: :bool
  field :return_total_results_count, 7, optional: true, type: :bool

  field :summary_row_setting, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.SearchGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 1, repeated: true, type: Google.Ads.Googleads.V8.Services.GoogleAdsRow
  field :next_page_token, 2, optional: true, type: :string
  field :total_results_count, 3, optional: true, type: :int64
  field :field_mask, 5, optional: true, type: Google.Protobuf.FieldMask
  field :summary_row, 6, optional: true, type: Google.Ads.Googleads.V8.Services.GoogleAdsRow
end

defmodule Google.Ads.Googleads.V8.Services.SearchGoogleAdsStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :query, 2, required: true, type: :string

  field :summary_row_setting, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.SearchGoogleAdsStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 1, repeated: true, type: Google.Ads.Googleads.V8.Services.GoogleAdsRow
  field :field_mask, 2, optional: true, type: Google.Protobuf.FieldMask
  field :summary_row, 3, optional: true, type: Google.Ads.Googleads.V8.Services.GoogleAdsRow
  field :request_id, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GoogleAdsRow do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :account_budget, 42, optional: true, type: Google.Ads.Googleads.V8.Resources.AccountBudget

  field :account_budget_proposal, 43,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AccountBudgetProposal

  field :account_link, 143, optional: true, type: Google.Ads.Googleads.V8.Resources.AccountLink
  field :ad_group, 3, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroup
  field :ad_group_ad, 16, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupAd

  field :ad_group_ad_asset_view, 131,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupAdAssetView

  field :ad_group_ad_label, 120,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupAdLabel

  field :ad_group_asset, 154, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupAsset

  field :ad_group_audience_view, 57,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupAudienceView

  field :ad_group_bid_modifier, 24,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupBidModifier

  field :ad_group_criterion, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupCriterion

  field :ad_group_criterion_label, 121,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupCriterionLabel

  field :ad_group_criterion_simulation, 110,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupCriterionSimulation

  field :ad_group_extension_setting, 112,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupExtensionSetting

  field :ad_group_feed, 67, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupFeed
  field :ad_group_label, 115, optional: true, type: Google.Ads.Googleads.V8.Resources.AdGroupLabel

  field :ad_group_simulation, 107,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupSimulation

  field :ad_parameter, 130, optional: true, type: Google.Ads.Googleads.V8.Resources.AdParameter
  field :age_range_view, 48, optional: true, type: Google.Ads.Googleads.V8.Resources.AgeRangeView

  field :ad_schedule_view, 89,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdScheduleView

  field :domain_category, 91,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.DomainCategory

  field :asset, 105, optional: true, type: Google.Ads.Googleads.V8.Resources.Asset

  field :asset_field_type_view, 168,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AssetFieldTypeView

  field :batch_job, 139, optional: true, type: Google.Ads.Googleads.V8.Resources.BatchJob

  field :bidding_strategy, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.BiddingStrategy

  field :bidding_strategy_simulation, 158,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.BiddingStrategySimulation

  field :billing_setup, 41, optional: true, type: Google.Ads.Googleads.V8.Resources.BillingSetup
  field :call_view, 152, optional: true, type: Google.Ads.Googleads.V8.Resources.CallView

  field :campaign_budget, 19,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBudget

  field :campaign, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.Campaign

  field :campaign_asset, 142,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignAsset

  field :campaign_audience_view, 69,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignAudienceView

  field :campaign_bid_modifier, 26,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBidModifier

  field :campaign_criterion, 20,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignCriterion

  field :campaign_criterion_simulation, 111,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignCriterionSimulation

  field :campaign_draft, 49, optional: true, type: Google.Ads.Googleads.V8.Resources.CampaignDraft

  field :campaign_experiment, 84,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignExperiment

  field :campaign_extension_setting, 113,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignExtensionSetting

  field :campaign_feed, 63, optional: true, type: Google.Ads.Googleads.V8.Resources.CampaignFeed

  field :campaign_label, 108,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignLabel

  field :campaign_shared_set, 30,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignSharedSet

  field :campaign_simulation, 157,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignSimulation

  field :carrier_constant, 66,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CarrierConstant

  field :change_event, 145, optional: true, type: Google.Ads.Googleads.V8.Resources.ChangeEvent
  field :change_status, 37, optional: true, type: Google.Ads.Googleads.V8.Resources.ChangeStatus

  field :combined_audience, 148,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CombinedAudience

  field :conversion_action, 103,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionAction

  field :conversion_custom_variable, 153,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionCustomVariable

  field :click_view, 122, optional: true, type: Google.Ads.Googleads.V8.Resources.ClickView

  field :currency_constant, 134,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CurrencyConstant

  field :custom_audience, 147,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomAudience

  field :custom_interest, 104,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomInterest

  field :customer, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.Customer

  field :customer_asset, 155,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerAsset

  field :accessible_bidding_strategy, 169,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy

  field :customer_manager_link, 61,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerManagerLink

  field :customer_client_link, 62,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerClientLink

  field :customer_client, 70,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerClient

  field :customer_extension_setting, 114,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerExtensionSetting

  field :customer_feed, 64, optional: true, type: Google.Ads.Googleads.V8.Resources.CustomerFeed

  field :customer_label, 124,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerLabel

  field :customer_negative_criterion, 88,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerNegativeCriterion

  field :customer_user_access, 146,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerUserAccess

  field :customer_user_access_invitation, 150,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerUserAccessInvitation

  field :detail_placement_view, 118,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.DetailPlacementView

  field :detailed_demographic, 166,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.DetailedDemographic

  field :display_keyword_view, 47,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.DisplayKeywordView

  field :distance_view, 132, optional: true, type: Google.Ads.Googleads.V8.Resources.DistanceView

  field :dynamic_search_ads_search_term_view, 106,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.DynamicSearchAdsSearchTermView

  field :expanded_landing_page_view, 128,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ExpandedLandingPageView

  field :extension_feed_item, 85,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ExtensionFeedItem

  field :feed, 46, optional: true, type: Google.Ads.Googleads.V8.Resources.Feed
  field :feed_item, 50, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedItem
  field :feed_item_set, 149, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedItemSet

  field :feed_item_set_link, 151,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.FeedItemSetLink

  field :feed_item_target, 116,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.FeedItemTarget

  field :feed_mapping, 58, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedMapping

  field :feed_placeholder_view, 97,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.FeedPlaceholderView

  field :gender_view, 40, optional: true, type: Google.Ads.Googleads.V8.Resources.GenderView

  field :geo_target_constant, 23,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.GeoTargetConstant

  field :geographic_view, 125,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.GeographicView

  field :group_placement_view, 119,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.GroupPlacementView

  field :hotel_group_view, 51,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.HotelGroupView

  field :hotel_performance_view, 71,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.HotelPerformanceView

  field :income_range_view, 138,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.IncomeRangeView

  field :keyword_view, 21, optional: true, type: Google.Ads.Googleads.V8.Resources.KeywordView
  field :keyword_plan, 32, optional: true, type: Google.Ads.Googleads.V8.Resources.KeywordPlan

  field :keyword_plan_campaign, 33,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign

  field :keyword_plan_campaign_keyword, 140,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanCampaignKeyword

  field :keyword_plan_ad_group, 35,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroup

  field :keyword_plan_ad_group_keyword, 141,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroupKeyword

  field :keyword_theme_constant, 163,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordThemeConstant

  field :label, 52, optional: true, type: Google.Ads.Googleads.V8.Resources.Label

  field :landing_page_view, 126,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.LandingPageView

  field :language_constant, 55,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.LanguageConstant

  field :location_view, 123, optional: true, type: Google.Ads.Googleads.V8.Resources.LocationView

  field :managed_placement_view, 53,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ManagedPlacementView

  field :media_file, 90, optional: true, type: Google.Ads.Googleads.V8.Resources.MediaFile

  field :mobile_app_category_constant, 87,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.MobileAppCategoryConstant

  field :mobile_device_constant, 98,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.MobileDeviceConstant

  field :offline_user_data_job, 137,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.OfflineUserDataJob

  field :operating_system_version_constant, 86,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.OperatingSystemVersionConstant

  field :paid_organic_search_term_view, 129,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.PaidOrganicSearchTermView

  field :parental_status_view, 45,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ParentalStatusView

  field :product_bidding_category_constant, 109,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ProductBiddingCategoryConstant

  field :product_group_view, 54,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ProductGroupView

  field :recommendation, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Recommendation

  field :search_term_view, 68,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.SearchTermView

  field :shared_criterion, 29,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.SharedCriterion

  field :shared_set, 27, optional: true, type: Google.Ads.Googleads.V8.Resources.SharedSet

  field :smart_campaign_setting, 167,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting

  field :shopping_performance_view, 117,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ShoppingPerformanceView

  field :smart_campaign_search_term_view, 170,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.SmartCampaignSearchTermView

  field :third_party_app_analytics_link, 144,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ThirdPartyAppAnalyticsLink

  field :topic_view, 44, optional: true, type: Google.Ads.Googleads.V8.Resources.TopicView
  field :user_interest, 59, optional: true, type: Google.Ads.Googleads.V8.Resources.UserInterest
  field :life_event, 161, optional: true, type: Google.Ads.Googleads.V8.Resources.LifeEvent
  field :user_list, 38, optional: true, type: Google.Ads.Googleads.V8.Resources.UserList

  field :user_location_view, 135,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.UserLocationView

  field :remarketing_action, 60,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.RemarketingAction

  field :topic_constant, 31, optional: true, type: Google.Ads.Googleads.V8.Resources.TopicConstant
  field :video, 39, optional: true, type: Google.Ads.Googleads.V8.Resources.Video
  field :webpage_view, 162, optional: true, type: Google.Ads.Googleads.V8.Resources.WebpageView
  field :metrics, 4, optional: true, type: Google.Ads.Googleads.V8.Common.Metrics
  field :segments, 102, optional: true, type: Google.Ads.Googleads.V8.Common.Segments
end

defmodule Google.Ads.Googleads.V8.Services.MutateGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :mutate_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.MutateGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :mutate_operation_responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateOperationResponse
end

defmodule Google.Ads.Googleads.V8.Services.MutateOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0

  field :ad_group_ad_label_operation, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupAdLabelOperation,
    oneof: 0

  field :ad_group_ad_operation, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupAdOperation,
    oneof: 0

  field :ad_group_asset_operation, 56,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupAssetOperation,
    oneof: 0

  field :ad_group_bid_modifier_operation, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupBidModifierOperation,
    oneof: 0

  field :ad_group_criterion_label_operation, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupCriterionLabelOperation,
    oneof: 0

  field :ad_group_criterion_operation, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupCriterionOperation,
    oneof: 0

  field :ad_group_extension_setting_operation, 19,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupExtensionSettingOperation,
    oneof: 0

  field :ad_group_feed_operation, 20,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupFeedOperation,
    oneof: 0

  field :ad_group_label_operation, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupLabelOperation,
    oneof: 0

  field :ad_group_operation, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupOperation,
    oneof: 0

  field :ad_operation, 49,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdOperation,
    oneof: 0

  field :ad_parameter_operation, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AdParameterOperation,
    oneof: 0

  field :asset_operation, 23,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.AssetOperation,
    oneof: 0

  field :bidding_strategy_operation, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.BiddingStrategyOperation,
    oneof: 0

  field :campaign_asset_operation, 52,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignAssetOperation,
    oneof: 0

  field :campaign_bid_modifier_operation, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignBidModifierOperation,
    oneof: 0

  field :campaign_budget_operation, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignBudgetOperation,
    oneof: 0

  field :campaign_criterion_operation, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignCriterionOperation,
    oneof: 0

  field :campaign_draft_operation, 24,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignDraftOperation,
    oneof: 0

  field :campaign_experiment_operation, 25,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignExperimentOperation,
    oneof: 0

  field :campaign_extension_setting_operation, 26,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignExtensionSettingOperation,
    oneof: 0

  field :campaign_feed_operation, 27,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignFeedOperation,
    oneof: 0

  field :campaign_label_operation, 28,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignLabelOperation,
    oneof: 0

  field :campaign_operation, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignOperation,
    oneof: 0

  field :campaign_shared_set_operation, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CampaignSharedSetOperation,
    oneof: 0

  field :conversion_action_operation, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ConversionActionOperation,
    oneof: 0

  field :conversion_custom_variable_operation, 55,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ConversionCustomVariableOperation,
    oneof: 0

  field :customer_asset_operation, 57,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CustomerAssetOperation,
    oneof: 0

  field :customer_extension_setting_operation, 30,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CustomerExtensionSettingOperation,
    oneof: 0

  field :customer_feed_operation, 31,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CustomerFeedOperation,
    oneof: 0

  field :customer_label_operation, 32,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CustomerLabelOperation,
    oneof: 0

  field :customer_negative_criterion_operation, 34,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CustomerNegativeCriterionOperation,
    oneof: 0

  field :customer_operation, 35,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.CustomerOperation,
    oneof: 0

  field :extension_feed_item_operation, 36,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ExtensionFeedItemOperation,
    oneof: 0

  field :feed_item_operation, 37,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.FeedItemOperation,
    oneof: 0

  field :feed_item_set_operation, 53,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.FeedItemSetOperation,
    oneof: 0

  field :feed_item_set_link_operation, 54,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.FeedItemSetLinkOperation,
    oneof: 0

  field :feed_item_target_operation, 38,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.FeedItemTargetOperation,
    oneof: 0

  field :feed_mapping_operation, 39,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.FeedMappingOperation,
    oneof: 0

  field :feed_operation, 40,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.FeedOperation,
    oneof: 0

  field :keyword_plan_ad_group_operation, 44,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupOperation,
    oneof: 0

  field :keyword_plan_ad_group_keyword_operation, 50,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupKeywordOperation,
    oneof: 0

  field :keyword_plan_campaign_keyword_operation, 51,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignKeywordOperation,
    oneof: 0

  field :keyword_plan_campaign_operation, 45,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignOperation,
    oneof: 0

  field :keyword_plan_operation, 48,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanOperation,
    oneof: 0

  field :label_operation, 41,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.LabelOperation,
    oneof: 0

  field :media_file_operation, 42,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MediaFileOperation,
    oneof: 0

  field :remarketing_action_operation, 43,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.RemarketingActionOperation,
    oneof: 0

  field :shared_criterion_operation, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.SharedCriterionOperation,
    oneof: 0

  field :shared_set_operation, 15,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.SharedSetOperation,
    oneof: 0

  field :smart_campaign_setting_operation, 61,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.SmartCampaignSettingOperation,
    oneof: 0

  field :user_list_operation, 16,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.UserListOperation,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :response, 0

  field :ad_group_ad_label_result, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupAdLabelResult,
    oneof: 0

  field :ad_group_ad_result, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupAdResult,
    oneof: 0

  field :ad_group_asset_result, 56,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupAssetResult,
    oneof: 0

  field :ad_group_bid_modifier_result, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupBidModifierResult,
    oneof: 0

  field :ad_group_criterion_label_result, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupCriterionLabelResult,
    oneof: 0

  field :ad_group_criterion_result, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupCriterionResult,
    oneof: 0

  field :ad_group_extension_setting_result, 19,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupExtensionSettingResult,
    oneof: 0

  field :ad_group_feed_result, 20,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupFeedResult,
    oneof: 0

  field :ad_group_label_result, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupLabelResult,
    oneof: 0

  field :ad_group_result, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupResult,
    oneof: 0

  field :ad_parameter_result, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdParameterResult,
    oneof: 0

  field :ad_result, 49,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdResult,
    oneof: 0

  field :asset_result, 23,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateAssetResult,
    oneof: 0

  field :bidding_strategy_result, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateBiddingStrategyResult,
    oneof: 0

  field :campaign_asset_result, 52,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignAssetResult,
    oneof: 0

  field :campaign_bid_modifier_result, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignBidModifierResult,
    oneof: 0

  field :campaign_budget_result, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignBudgetResult,
    oneof: 0

  field :campaign_criterion_result, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignCriterionResult,
    oneof: 0

  field :campaign_draft_result, 24,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignDraftResult,
    oneof: 0

  field :campaign_experiment_result, 25,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignExperimentResult,
    oneof: 0

  field :campaign_extension_setting_result, 26,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignExtensionSettingResult,
    oneof: 0

  field :campaign_feed_result, 27,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignFeedResult,
    oneof: 0

  field :campaign_label_result, 28,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignLabelResult,
    oneof: 0

  field :campaign_result, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignResult,
    oneof: 0

  field :campaign_shared_set_result, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignSharedSetResult,
    oneof: 0

  field :conversion_action_result, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateConversionActionResult,
    oneof: 0

  field :conversion_custom_variable_result, 55,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateConversionCustomVariableResult,
    oneof: 0

  field :customer_asset_result, 57,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerAssetResult,
    oneof: 0

  field :customer_extension_setting_result, 30,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerExtensionSettingResult,
    oneof: 0

  field :customer_feed_result, 31,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerFeedResult,
    oneof: 0

  field :customer_label_result, 32,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerLabelResult,
    oneof: 0

  field :customer_negative_criterion_result, 34,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerNegativeCriteriaResult,
    oneof: 0

  field :customer_result, 35,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerResult,
    oneof: 0

  field :extension_feed_item_result, 36,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateExtensionFeedItemResult,
    oneof: 0

  field :feed_item_result, 37,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedItemResult,
    oneof: 0

  field :feed_item_set_result, 53,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedItemSetResult,
    oneof: 0

  field :feed_item_set_link_result, 54,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedItemSetLinkResult,
    oneof: 0

  field :feed_item_target_result, 38,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedItemTargetResult,
    oneof: 0

  field :feed_mapping_result, 39,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedMappingResult,
    oneof: 0

  field :feed_result, 40,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedResult,
    oneof: 0

  field :keyword_plan_ad_group_result, 44,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlanAdGroupResult,
    oneof: 0

  field :keyword_plan_campaign_result, 45,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignResult,
    oneof: 0

  field :keyword_plan_ad_group_keyword_result, 50,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlanAdGroupKeywordResult,
    oneof: 0

  field :keyword_plan_campaign_keyword_result, 51,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignKeywordResult,
    oneof: 0

  field :keyword_plan_result, 48,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlansResult,
    oneof: 0

  field :label_result, 41,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateLabelResult,
    oneof: 0

  field :media_file_result, 42,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateMediaFileResult,
    oneof: 0

  field :remarketing_action_result, 43,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateRemarketingActionResult,
    oneof: 0

  field :shared_criterion_result, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateSharedCriterionResult,
    oneof: 0

  field :shared_set_result, 15,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateSharedSetResult,
    oneof: 0

  field :smart_campaign_setting_result, 61,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingResult,
    oneof: 0

  field :user_list_result, 16,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateUserListResult,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.GoogleAdsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.GoogleAdsService"

  rpc :Search,
      Google.Ads.Googleads.V8.Services.SearchGoogleAdsRequest,
      Google.Ads.Googleads.V8.Services.SearchGoogleAdsResponse

  rpc :SearchStream,
      Google.Ads.Googleads.V8.Services.SearchGoogleAdsStreamRequest,
      stream(Google.Ads.Googleads.V8.Services.SearchGoogleAdsStreamResponse)

  rpc :Mutate,
      Google.Ads.Googleads.V8.Services.MutateGoogleAdsRequest,
      Google.Ads.Googleads.V8.Services.MutateGoogleAdsResponse
end

defmodule Google.Ads.Googleads.V8.Services.GoogleAdsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.GoogleAdsService.Service
end
