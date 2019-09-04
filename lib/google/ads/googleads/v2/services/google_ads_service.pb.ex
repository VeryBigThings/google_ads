defmodule Google.Ads.Googleads.V2.Services.SearchGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          query: String.t(),
          page_token: String.t(),
          page_size: integer,
          validate_only: boolean,
          return_summary_row: boolean
        }
  defstruct [:customer_id, :query, :page_token, :page_size, :validate_only, :return_summary_row]

  field(:customer_id, 1, type: :string)
  field(:query, 2, type: :string)
  field(:page_token, 3, type: :string)
  field(:page_size, 4, type: :int32)
  field(:validate_only, 5, type: :bool)
  field(:return_summary_row, 6, type: :bool)
end

defmodule Google.Ads.Googleads.V2.Services.SearchGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V2.Services.GoogleAdsRow.t()],
          next_page_token: String.t(),
          total_results_count: integer,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          summary_row: Google.Ads.Googleads.V2.Services.GoogleAdsRow.t() | nil
        }
  defstruct [:results, :next_page_token, :total_results_count, :field_mask, :summary_row]

  field(:results, 1, repeated: true, type: Google.Ads.Googleads.V2.Services.GoogleAdsRow)
  field(:next_page_token, 2, type: :string)
  field(:total_results_count, 3, type: :int64)
  field(:field_mask, 5, type: Google.Protobuf.FieldMask)
  field(:summary_row, 6, type: Google.Ads.Googleads.V2.Services.GoogleAdsRow)
end

defmodule Google.Ads.Googleads.V2.Services.GoogleAdsRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_budget: Google.Ads.Googleads.V2.Resources.AccountBudget.t() | nil,
          account_budget_proposal:
            Google.Ads.Googleads.V2.Resources.AccountBudgetProposal.t() | nil,
          ad_group: Google.Ads.Googleads.V2.Resources.AdGroup.t() | nil,
          ad_group_ad: Google.Ads.Googleads.V2.Resources.AdGroupAd.t() | nil,
          ad_group_ad_asset_view: Google.Ads.Googleads.V2.Resources.AdGroupAdAssetView.t() | nil,
          ad_group_ad_label: Google.Ads.Googleads.V2.Resources.AdGroupAdLabel.t() | nil,
          ad_group_audience_view: Google.Ads.Googleads.V2.Resources.AdGroupAudienceView.t() | nil,
          ad_group_bid_modifier: Google.Ads.Googleads.V2.Resources.AdGroupBidModifier.t() | nil,
          ad_group_criterion: Google.Ads.Googleads.V2.Resources.AdGroupCriterion.t() | nil,
          ad_group_criterion_label:
            Google.Ads.Googleads.V2.Resources.AdGroupCriterionLabel.t() | nil,
          ad_group_criterion_simulation:
            Google.Ads.Googleads.V2.Resources.AdGroupCriterionSimulation.t() | nil,
          ad_group_extension_setting:
            Google.Ads.Googleads.V2.Resources.AdGroupExtensionSetting.t() | nil,
          ad_group_feed: Google.Ads.Googleads.V2.Resources.AdGroupFeed.t() | nil,
          ad_group_label: Google.Ads.Googleads.V2.Resources.AdGroupLabel.t() | nil,
          ad_group_simulation: Google.Ads.Googleads.V2.Resources.AdGroupSimulation.t() | nil,
          ad_parameter: Google.Ads.Googleads.V2.Resources.AdParameter.t() | nil,
          age_range_view: Google.Ads.Googleads.V2.Resources.AgeRangeView.t() | nil,
          ad_schedule_view: Google.Ads.Googleads.V2.Resources.AdScheduleView.t() | nil,
          domain_category: Google.Ads.Googleads.V2.Resources.DomainCategory.t() | nil,
          asset: Google.Ads.Googleads.V2.Resources.Asset.t() | nil,
          bidding_strategy: Google.Ads.Googleads.V2.Resources.BiddingStrategy.t() | nil,
          billing_setup: Google.Ads.Googleads.V2.Resources.BillingSetup.t() | nil,
          campaign_budget: Google.Ads.Googleads.V2.Resources.CampaignBudget.t() | nil,
          campaign: Google.Ads.Googleads.V2.Resources.Campaign.t() | nil,
          campaign_audience_view:
            Google.Ads.Googleads.V2.Resources.CampaignAudienceView.t() | nil,
          campaign_bid_modifier: Google.Ads.Googleads.V2.Resources.CampaignBidModifier.t() | nil,
          campaign_criterion: Google.Ads.Googleads.V2.Resources.CampaignCriterion.t() | nil,
          campaign_criterion_simulation:
            Google.Ads.Googleads.V2.Resources.CampaignCriterionSimulation.t() | nil,
          campaign_draft: Google.Ads.Googleads.V2.Resources.CampaignDraft.t() | nil,
          campaign_experiment: Google.Ads.Googleads.V2.Resources.CampaignExperiment.t() | nil,
          campaign_extension_setting:
            Google.Ads.Googleads.V2.Resources.CampaignExtensionSetting.t() | nil,
          campaign_feed: Google.Ads.Googleads.V2.Resources.CampaignFeed.t() | nil,
          campaign_label: Google.Ads.Googleads.V2.Resources.CampaignLabel.t() | nil,
          campaign_shared_set: Google.Ads.Googleads.V2.Resources.CampaignSharedSet.t() | nil,
          carrier_constant: Google.Ads.Googleads.V2.Resources.CarrierConstant.t() | nil,
          change_status: Google.Ads.Googleads.V2.Resources.ChangeStatus.t() | nil,
          conversion_action: Google.Ads.Googleads.V2.Resources.ConversionAction.t() | nil,
          click_view: Google.Ads.Googleads.V2.Resources.ClickView.t() | nil,
          custom_interest: Google.Ads.Googleads.V2.Resources.CustomInterest.t() | nil,
          customer: Google.Ads.Googleads.V2.Resources.Customer.t() | nil,
          customer_manager_link: Google.Ads.Googleads.V2.Resources.CustomerManagerLink.t() | nil,
          customer_client_link: Google.Ads.Googleads.V2.Resources.CustomerClientLink.t() | nil,
          customer_client: Google.Ads.Googleads.V2.Resources.CustomerClient.t() | nil,
          customer_extension_setting:
            Google.Ads.Googleads.V2.Resources.CustomerExtensionSetting.t() | nil,
          customer_feed: Google.Ads.Googleads.V2.Resources.CustomerFeed.t() | nil,
          customer_label: Google.Ads.Googleads.V2.Resources.CustomerLabel.t() | nil,
          customer_negative_criterion:
            Google.Ads.Googleads.V2.Resources.CustomerNegativeCriterion.t() | nil,
          detail_placement_view: Google.Ads.Googleads.V2.Resources.DetailPlacementView.t() | nil,
          display_keyword_view: Google.Ads.Googleads.V2.Resources.DisplayKeywordView.t() | nil,
          distance_view: Google.Ads.Googleads.V2.Resources.DistanceView.t() | nil,
          dynamic_search_ads_search_term_view:
            Google.Ads.Googleads.V2.Resources.DynamicSearchAdsSearchTermView.t() | nil,
          expanded_landing_page_view:
            Google.Ads.Googleads.V2.Resources.ExpandedLandingPageView.t() | nil,
          extension_feed_item: Google.Ads.Googleads.V2.Resources.ExtensionFeedItem.t() | nil,
          feed: Google.Ads.Googleads.V2.Resources.Feed.t() | nil,
          feed_item: Google.Ads.Googleads.V2.Resources.FeedItem.t() | nil,
          feed_item_target: Google.Ads.Googleads.V2.Resources.FeedItemTarget.t() | nil,
          feed_mapping: Google.Ads.Googleads.V2.Resources.FeedMapping.t() | nil,
          feed_placeholder_view: Google.Ads.Googleads.V2.Resources.FeedPlaceholderView.t() | nil,
          gender_view: Google.Ads.Googleads.V2.Resources.GenderView.t() | nil,
          geo_target_constant: Google.Ads.Googleads.V2.Resources.GeoTargetConstant.t() | nil,
          geographic_view: Google.Ads.Googleads.V2.Resources.GeographicView.t() | nil,
          group_placement_view: Google.Ads.Googleads.V2.Resources.GroupPlacementView.t() | nil,
          hotel_group_view: Google.Ads.Googleads.V2.Resources.HotelGroupView.t() | nil,
          hotel_performance_view:
            Google.Ads.Googleads.V2.Resources.HotelPerformanceView.t() | nil,
          keyword_view: Google.Ads.Googleads.V2.Resources.KeywordView.t() | nil,
          keyword_plan: Google.Ads.Googleads.V2.Resources.KeywordPlan.t() | nil,
          keyword_plan_campaign: Google.Ads.Googleads.V2.Resources.KeywordPlanCampaign.t() | nil,
          keyword_plan_negative_keyword:
            Google.Ads.Googleads.V2.Resources.KeywordPlanNegativeKeyword.t() | nil,
          keyword_plan_ad_group: Google.Ads.Googleads.V2.Resources.KeywordPlanAdGroup.t() | nil,
          keyword_plan_keyword: Google.Ads.Googleads.V2.Resources.KeywordPlanKeyword.t() | nil,
          label: Google.Ads.Googleads.V2.Resources.Label.t() | nil,
          landing_page_view: Google.Ads.Googleads.V2.Resources.LandingPageView.t() | nil,
          language_constant: Google.Ads.Googleads.V2.Resources.LanguageConstant.t() | nil,
          location_view: Google.Ads.Googleads.V2.Resources.LocationView.t() | nil,
          managed_placement_view:
            Google.Ads.Googleads.V2.Resources.ManagedPlacementView.t() | nil,
          media_file: Google.Ads.Googleads.V2.Resources.MediaFile.t() | nil,
          mobile_app_category_constant:
            Google.Ads.Googleads.V2.Resources.MobileAppCategoryConstant.t() | nil,
          mobile_device_constant:
            Google.Ads.Googleads.V2.Resources.MobileDeviceConstant.t() | nil,
          mutate_job: Google.Ads.Googleads.V2.Resources.MutateJob.t() | nil,
          operating_system_version_constant:
            Google.Ads.Googleads.V2.Resources.OperatingSystemVersionConstant.t() | nil,
          paid_organic_search_term_view:
            Google.Ads.Googleads.V2.Resources.PaidOrganicSearchTermView.t() | nil,
          parental_status_view: Google.Ads.Googleads.V2.Resources.ParentalStatusView.t() | nil,
          product_bidding_category_constant:
            Google.Ads.Googleads.V2.Resources.ProductBiddingCategoryConstant.t() | nil,
          product_group_view: Google.Ads.Googleads.V2.Resources.ProductGroupView.t() | nil,
          recommendation: Google.Ads.Googleads.V2.Resources.Recommendation.t() | nil,
          search_term_view: Google.Ads.Googleads.V2.Resources.SearchTermView.t() | nil,
          shared_criterion: Google.Ads.Googleads.V2.Resources.SharedCriterion.t() | nil,
          shared_set: Google.Ads.Googleads.V2.Resources.SharedSet.t() | nil,
          shopping_performance_view:
            Google.Ads.Googleads.V2.Resources.ShoppingPerformanceView.t() | nil,
          topic_view: Google.Ads.Googleads.V2.Resources.TopicView.t() | nil,
          user_interest: Google.Ads.Googleads.V2.Resources.UserInterest.t() | nil,
          user_list: Google.Ads.Googleads.V2.Resources.UserList.t() | nil,
          user_location_view: Google.Ads.Googleads.V2.Resources.UserLocationView.t() | nil,
          remarketing_action: Google.Ads.Googleads.V2.Resources.RemarketingAction.t() | nil,
          topic_constant: Google.Ads.Googleads.V2.Resources.TopicConstant.t() | nil,
          video: Google.Ads.Googleads.V2.Resources.Video.t() | nil,
          metrics: Google.Ads.Googleads.V2.Common.Metrics.t() | nil,
          segments: Google.Ads.Googleads.V2.Common.Segments.t() | nil
        }
  defstruct [
    :account_budget,
    :account_budget_proposal,
    :ad_group,
    :ad_group_ad,
    :ad_group_ad_asset_view,
    :ad_group_ad_label,
    :ad_group_audience_view,
    :ad_group_bid_modifier,
    :ad_group_criterion,
    :ad_group_criterion_label,
    :ad_group_criterion_simulation,
    :ad_group_extension_setting,
    :ad_group_feed,
    :ad_group_label,
    :ad_group_simulation,
    :ad_parameter,
    :age_range_view,
    :ad_schedule_view,
    :domain_category,
    :asset,
    :bidding_strategy,
    :billing_setup,
    :campaign_budget,
    :campaign,
    :campaign_audience_view,
    :campaign_bid_modifier,
    :campaign_criterion,
    :campaign_criterion_simulation,
    :campaign_draft,
    :campaign_experiment,
    :campaign_extension_setting,
    :campaign_feed,
    :campaign_label,
    :campaign_shared_set,
    :carrier_constant,
    :change_status,
    :conversion_action,
    :click_view,
    :custom_interest,
    :customer,
    :customer_manager_link,
    :customer_client_link,
    :customer_client,
    :customer_extension_setting,
    :customer_feed,
    :customer_label,
    :customer_negative_criterion,
    :detail_placement_view,
    :display_keyword_view,
    :distance_view,
    :dynamic_search_ads_search_term_view,
    :expanded_landing_page_view,
    :extension_feed_item,
    :feed,
    :feed_item,
    :feed_item_target,
    :feed_mapping,
    :feed_placeholder_view,
    :gender_view,
    :geo_target_constant,
    :geographic_view,
    :group_placement_view,
    :hotel_group_view,
    :hotel_performance_view,
    :keyword_view,
    :keyword_plan,
    :keyword_plan_campaign,
    :keyword_plan_negative_keyword,
    :keyword_plan_ad_group,
    :keyword_plan_keyword,
    :label,
    :landing_page_view,
    :language_constant,
    :location_view,
    :managed_placement_view,
    :media_file,
    :mobile_app_category_constant,
    :mobile_device_constant,
    :mutate_job,
    :operating_system_version_constant,
    :paid_organic_search_term_view,
    :parental_status_view,
    :product_bidding_category_constant,
    :product_group_view,
    :recommendation,
    :search_term_view,
    :shared_criterion,
    :shared_set,
    :shopping_performance_view,
    :topic_view,
    :user_interest,
    :user_list,
    :user_location_view,
    :remarketing_action,
    :topic_constant,
    :video,
    :metrics,
    :segments
  ]

  field(:account_budget, 42, type: Google.Ads.Googleads.V2.Resources.AccountBudget)

  field(:account_budget_proposal, 43,
    type: Google.Ads.Googleads.V2.Resources.AccountBudgetProposal
  )

  field(:ad_group, 3, type: Google.Ads.Googleads.V2.Resources.AdGroup)
  field(:ad_group_ad, 16, type: Google.Ads.Googleads.V2.Resources.AdGroupAd)
  field(:ad_group_ad_asset_view, 131, type: Google.Ads.Googleads.V2.Resources.AdGroupAdAssetView)
  field(:ad_group_ad_label, 120, type: Google.Ads.Googleads.V2.Resources.AdGroupAdLabel)
  field(:ad_group_audience_view, 57, type: Google.Ads.Googleads.V2.Resources.AdGroupAudienceView)
  field(:ad_group_bid_modifier, 24, type: Google.Ads.Googleads.V2.Resources.AdGroupBidModifier)
  field(:ad_group_criterion, 17, type: Google.Ads.Googleads.V2.Resources.AdGroupCriterion)

  field(:ad_group_criterion_label, 121,
    type: Google.Ads.Googleads.V2.Resources.AdGroupCriterionLabel
  )

  field(:ad_group_criterion_simulation, 110,
    type: Google.Ads.Googleads.V2.Resources.AdGroupCriterionSimulation
  )

  field(:ad_group_extension_setting, 112,
    type: Google.Ads.Googleads.V2.Resources.AdGroupExtensionSetting
  )

  field(:ad_group_feed, 67, type: Google.Ads.Googleads.V2.Resources.AdGroupFeed)
  field(:ad_group_label, 115, type: Google.Ads.Googleads.V2.Resources.AdGroupLabel)
  field(:ad_group_simulation, 107, type: Google.Ads.Googleads.V2.Resources.AdGroupSimulation)
  field(:ad_parameter, 130, type: Google.Ads.Googleads.V2.Resources.AdParameter)
  field(:age_range_view, 48, type: Google.Ads.Googleads.V2.Resources.AgeRangeView)
  field(:ad_schedule_view, 89, type: Google.Ads.Googleads.V2.Resources.AdScheduleView)
  field(:domain_category, 91, type: Google.Ads.Googleads.V2.Resources.DomainCategory)
  field(:asset, 105, type: Google.Ads.Googleads.V2.Resources.Asset)
  field(:bidding_strategy, 18, type: Google.Ads.Googleads.V2.Resources.BiddingStrategy)
  field(:billing_setup, 41, type: Google.Ads.Googleads.V2.Resources.BillingSetup)
  field(:campaign_budget, 19, type: Google.Ads.Googleads.V2.Resources.CampaignBudget)
  field(:campaign, 2, type: Google.Ads.Googleads.V2.Resources.Campaign)
  field(:campaign_audience_view, 69, type: Google.Ads.Googleads.V2.Resources.CampaignAudienceView)
  field(:campaign_bid_modifier, 26, type: Google.Ads.Googleads.V2.Resources.CampaignBidModifier)
  field(:campaign_criterion, 20, type: Google.Ads.Googleads.V2.Resources.CampaignCriterion)

  field(:campaign_criterion_simulation, 111,
    type: Google.Ads.Googleads.V2.Resources.CampaignCriterionSimulation
  )

  field(:campaign_draft, 49, type: Google.Ads.Googleads.V2.Resources.CampaignDraft)
  field(:campaign_experiment, 84, type: Google.Ads.Googleads.V2.Resources.CampaignExperiment)

  field(:campaign_extension_setting, 113,
    type: Google.Ads.Googleads.V2.Resources.CampaignExtensionSetting
  )

  field(:campaign_feed, 63, type: Google.Ads.Googleads.V2.Resources.CampaignFeed)
  field(:campaign_label, 108, type: Google.Ads.Googleads.V2.Resources.CampaignLabel)
  field(:campaign_shared_set, 30, type: Google.Ads.Googleads.V2.Resources.CampaignSharedSet)
  field(:carrier_constant, 66, type: Google.Ads.Googleads.V2.Resources.CarrierConstant)
  field(:change_status, 37, type: Google.Ads.Googleads.V2.Resources.ChangeStatus)
  field(:conversion_action, 103, type: Google.Ads.Googleads.V2.Resources.ConversionAction)
  field(:click_view, 122, type: Google.Ads.Googleads.V2.Resources.ClickView)
  field(:custom_interest, 104, type: Google.Ads.Googleads.V2.Resources.CustomInterest)
  field(:customer, 1, type: Google.Ads.Googleads.V2.Resources.Customer)
  field(:customer_manager_link, 61, type: Google.Ads.Googleads.V2.Resources.CustomerManagerLink)
  field(:customer_client_link, 62, type: Google.Ads.Googleads.V2.Resources.CustomerClientLink)
  field(:customer_client, 70, type: Google.Ads.Googleads.V2.Resources.CustomerClient)

  field(:customer_extension_setting, 114,
    type: Google.Ads.Googleads.V2.Resources.CustomerExtensionSetting
  )

  field(:customer_feed, 64, type: Google.Ads.Googleads.V2.Resources.CustomerFeed)
  field(:customer_label, 124, type: Google.Ads.Googleads.V2.Resources.CustomerLabel)

  field(:customer_negative_criterion, 88,
    type: Google.Ads.Googleads.V2.Resources.CustomerNegativeCriterion
  )

  field(:detail_placement_view, 118, type: Google.Ads.Googleads.V2.Resources.DetailPlacementView)
  field(:display_keyword_view, 47, type: Google.Ads.Googleads.V2.Resources.DisplayKeywordView)
  field(:distance_view, 132, type: Google.Ads.Googleads.V2.Resources.DistanceView)

  field(:dynamic_search_ads_search_term_view, 106,
    type: Google.Ads.Googleads.V2.Resources.DynamicSearchAdsSearchTermView
  )

  field(:expanded_landing_page_view, 128,
    type: Google.Ads.Googleads.V2.Resources.ExpandedLandingPageView
  )

  field(:extension_feed_item, 85, type: Google.Ads.Googleads.V2.Resources.ExtensionFeedItem)
  field(:feed, 46, type: Google.Ads.Googleads.V2.Resources.Feed)
  field(:feed_item, 50, type: Google.Ads.Googleads.V2.Resources.FeedItem)
  field(:feed_item_target, 116, type: Google.Ads.Googleads.V2.Resources.FeedItemTarget)
  field(:feed_mapping, 58, type: Google.Ads.Googleads.V2.Resources.FeedMapping)
  field(:feed_placeholder_view, 97, type: Google.Ads.Googleads.V2.Resources.FeedPlaceholderView)
  field(:gender_view, 40, type: Google.Ads.Googleads.V2.Resources.GenderView)
  field(:geo_target_constant, 23, type: Google.Ads.Googleads.V2.Resources.GeoTargetConstant)
  field(:geographic_view, 125, type: Google.Ads.Googleads.V2.Resources.GeographicView)
  field(:group_placement_view, 119, type: Google.Ads.Googleads.V2.Resources.GroupPlacementView)
  field(:hotel_group_view, 51, type: Google.Ads.Googleads.V2.Resources.HotelGroupView)
  field(:hotel_performance_view, 71, type: Google.Ads.Googleads.V2.Resources.HotelPerformanceView)
  field(:keyword_view, 21, type: Google.Ads.Googleads.V2.Resources.KeywordView)
  field(:keyword_plan, 32, type: Google.Ads.Googleads.V2.Resources.KeywordPlan)
  field(:keyword_plan_campaign, 33, type: Google.Ads.Googleads.V2.Resources.KeywordPlanCampaign)

  field(:keyword_plan_negative_keyword, 34,
    type: Google.Ads.Googleads.V2.Resources.KeywordPlanNegativeKeyword
  )

  field(:keyword_plan_ad_group, 35, type: Google.Ads.Googleads.V2.Resources.KeywordPlanAdGroup)
  field(:keyword_plan_keyword, 36, type: Google.Ads.Googleads.V2.Resources.KeywordPlanKeyword)
  field(:label, 52, type: Google.Ads.Googleads.V2.Resources.Label)
  field(:landing_page_view, 126, type: Google.Ads.Googleads.V2.Resources.LandingPageView)
  field(:language_constant, 55, type: Google.Ads.Googleads.V2.Resources.LanguageConstant)
  field(:location_view, 123, type: Google.Ads.Googleads.V2.Resources.LocationView)
  field(:managed_placement_view, 53, type: Google.Ads.Googleads.V2.Resources.ManagedPlacementView)
  field(:media_file, 90, type: Google.Ads.Googleads.V2.Resources.MediaFile)

  field(:mobile_app_category_constant, 87,
    type: Google.Ads.Googleads.V2.Resources.MobileAppCategoryConstant
  )

  field(:mobile_device_constant, 98, type: Google.Ads.Googleads.V2.Resources.MobileDeviceConstant)
  field(:mutate_job, 127, type: Google.Ads.Googleads.V2.Resources.MutateJob)

  field(:operating_system_version_constant, 86,
    type: Google.Ads.Googleads.V2.Resources.OperatingSystemVersionConstant
  )

  field(:paid_organic_search_term_view, 129,
    type: Google.Ads.Googleads.V2.Resources.PaidOrganicSearchTermView
  )

  field(:parental_status_view, 45, type: Google.Ads.Googleads.V2.Resources.ParentalStatusView)

  field(:product_bidding_category_constant, 109,
    type: Google.Ads.Googleads.V2.Resources.ProductBiddingCategoryConstant
  )

  field(:product_group_view, 54, type: Google.Ads.Googleads.V2.Resources.ProductGroupView)
  field(:recommendation, 22, type: Google.Ads.Googleads.V2.Resources.Recommendation)
  field(:search_term_view, 68, type: Google.Ads.Googleads.V2.Resources.SearchTermView)
  field(:shared_criterion, 29, type: Google.Ads.Googleads.V2.Resources.SharedCriterion)
  field(:shared_set, 27, type: Google.Ads.Googleads.V2.Resources.SharedSet)

  field(:shopping_performance_view, 117,
    type: Google.Ads.Googleads.V2.Resources.ShoppingPerformanceView
  )

  field(:topic_view, 44, type: Google.Ads.Googleads.V2.Resources.TopicView)
  field(:user_interest, 59, type: Google.Ads.Googleads.V2.Resources.UserInterest)
  field(:user_list, 38, type: Google.Ads.Googleads.V2.Resources.UserList)
  field(:user_location_view, 135, type: Google.Ads.Googleads.V2.Resources.UserLocationView)
  field(:remarketing_action, 60, type: Google.Ads.Googleads.V2.Resources.RemarketingAction)
  field(:topic_constant, 31, type: Google.Ads.Googleads.V2.Resources.TopicConstant)
  field(:video, 39, type: Google.Ads.Googleads.V2.Resources.Video)
  field(:metrics, 4, type: Google.Ads.Googleads.V2.Common.Metrics)
  field(:segments, 102, type: Google.Ads.Googleads.V2.Common.Segments)
end

defmodule Google.Ads.Googleads.V2.Services.MutateGoogleAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          mutate_operations: [Google.Ads.Googleads.V2.Services.MutateOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }
  defstruct [:customer_id, :mutate_operations, :partial_failure, :validate_only]

  field(:customer_id, 1, type: :string)

  field(:mutate_operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V2.Services.MutateOperation
  )

  field(:partial_failure, 3, type: :bool)
  field(:validate_only, 4, type: :bool)
end

defmodule Google.Ads.Googleads.V2.Services.MutateGoogleAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          mutate_operation_responses: [
            Google.Ads.Googleads.V2.Services.MutateOperationResponse.t()
          ]
        }
  defstruct [:partial_failure_error, :mutate_operation_responses]

  field(:partial_failure_error, 3, type: Google.Rpc.Status)

  field(:mutate_operation_responses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V2.Services.MutateOperationResponse
  )
end

defmodule Google.Ads.Googleads.V2.Services.MutateOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }
  defstruct [:operation]

  oneof(:operation, 0)

  field(:ad_group_ad_label_operation, 17,
    type: Google.Ads.Googleads.V2.Services.AdGroupAdLabelOperation,
    oneof: 0
  )

  field(:ad_group_ad_operation, 1,
    type: Google.Ads.Googleads.V2.Services.AdGroupAdOperation,
    oneof: 0
  )

  field(:ad_group_bid_modifier_operation, 2,
    type: Google.Ads.Googleads.V2.Services.AdGroupBidModifierOperation,
    oneof: 0
  )

  field(:ad_group_criterion_label_operation, 18,
    type: Google.Ads.Googleads.V2.Services.AdGroupCriterionLabelOperation,
    oneof: 0
  )

  field(:ad_group_criterion_operation, 3,
    type: Google.Ads.Googleads.V2.Services.AdGroupCriterionOperation,
    oneof: 0
  )

  field(:ad_group_extension_setting_operation, 19,
    type: Google.Ads.Googleads.V2.Services.AdGroupExtensionSettingOperation,
    oneof: 0
  )

  field(:ad_group_feed_operation, 20,
    type: Google.Ads.Googleads.V2.Services.AdGroupFeedOperation,
    oneof: 0
  )

  field(:ad_group_label_operation, 21,
    type: Google.Ads.Googleads.V2.Services.AdGroupLabelOperation,
    oneof: 0
  )

  field(:ad_group_operation, 5, type: Google.Ads.Googleads.V2.Services.AdGroupOperation, oneof: 0)

  field(:ad_parameter_operation, 22,
    type: Google.Ads.Googleads.V2.Services.AdParameterOperation,
    oneof: 0
  )

  field(:asset_operation, 23, type: Google.Ads.Googleads.V2.Services.AssetOperation, oneof: 0)

  field(:bidding_strategy_operation, 6,
    type: Google.Ads.Googleads.V2.Services.BiddingStrategyOperation,
    oneof: 0
  )

  field(:campaign_bid_modifier_operation, 7,
    type: Google.Ads.Googleads.V2.Services.CampaignBidModifierOperation,
    oneof: 0
  )

  field(:campaign_budget_operation, 8,
    type: Google.Ads.Googleads.V2.Services.CampaignBudgetOperation,
    oneof: 0
  )

  field(:campaign_criterion_operation, 13,
    type: Google.Ads.Googleads.V2.Services.CampaignCriterionOperation,
    oneof: 0
  )

  field(:campaign_draft_operation, 24,
    type: Google.Ads.Googleads.V2.Services.CampaignDraftOperation,
    oneof: 0
  )

  field(:campaign_experiment_operation, 25,
    type: Google.Ads.Googleads.V2.Services.CampaignExperimentOperation,
    oneof: 0
  )

  field(:campaign_extension_setting_operation, 26,
    type: Google.Ads.Googleads.V2.Services.CampaignExtensionSettingOperation,
    oneof: 0
  )

  field(:campaign_feed_operation, 27,
    type: Google.Ads.Googleads.V2.Services.CampaignFeedOperation,
    oneof: 0
  )

  field(:campaign_label_operation, 28,
    type: Google.Ads.Googleads.V2.Services.CampaignLabelOperation,
    oneof: 0
  )

  field(:campaign_operation, 10,
    type: Google.Ads.Googleads.V2.Services.CampaignOperation,
    oneof: 0
  )

  field(:campaign_shared_set_operation, 11,
    type: Google.Ads.Googleads.V2.Services.CampaignSharedSetOperation,
    oneof: 0
  )

  field(:conversion_action_operation, 12,
    type: Google.Ads.Googleads.V2.Services.ConversionActionOperation,
    oneof: 0
  )

  field(:customer_extension_setting_operation, 30,
    type: Google.Ads.Googleads.V2.Services.CustomerExtensionSettingOperation,
    oneof: 0
  )

  field(:customer_feed_operation, 31,
    type: Google.Ads.Googleads.V2.Services.CustomerFeedOperation,
    oneof: 0
  )

  field(:customer_label_operation, 32,
    type: Google.Ads.Googleads.V2.Services.CustomerLabelOperation,
    oneof: 0
  )

  field(:customer_negative_criterion_operation, 34,
    type: Google.Ads.Googleads.V2.Services.CustomerNegativeCriterionOperation,
    oneof: 0
  )

  field(:customer_operation, 35,
    type: Google.Ads.Googleads.V2.Services.CustomerOperation,
    oneof: 0
  )

  field(:extension_feed_item_operation, 36,
    type: Google.Ads.Googleads.V2.Services.ExtensionFeedItemOperation,
    oneof: 0
  )

  field(:feed_item_operation, 37,
    type: Google.Ads.Googleads.V2.Services.FeedItemOperation,
    oneof: 0
  )

  field(:feed_item_target_operation, 38,
    type: Google.Ads.Googleads.V2.Services.FeedItemTargetOperation,
    oneof: 0
  )

  field(:feed_mapping_operation, 39,
    type: Google.Ads.Googleads.V2.Services.FeedMappingOperation,
    oneof: 0
  )

  field(:feed_operation, 40, type: Google.Ads.Googleads.V2.Services.FeedOperation, oneof: 0)
  field(:label_operation, 41, type: Google.Ads.Googleads.V2.Services.LabelOperation, oneof: 0)

  field(:media_file_operation, 42,
    type: Google.Ads.Googleads.V2.Services.MediaFileOperation,
    oneof: 0
  )

  field(:remarketing_action_operation, 43,
    type: Google.Ads.Googleads.V2.Services.RemarketingActionOperation,
    oneof: 0
  )

  field(:shared_criterion_operation, 14,
    type: Google.Ads.Googleads.V2.Services.SharedCriterionOperation,
    oneof: 0
  )

  field(:shared_set_operation, 15,
    type: Google.Ads.Googleads.V2.Services.SharedSetOperation,
    oneof: 0
  )

  field(:user_list_operation, 16,
    type: Google.Ads.Googleads.V2.Services.UserListOperation,
    oneof: 0
  )
end

defmodule Google.Ads.Googleads.V2.Services.MutateOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any}
        }
  defstruct [:response]

  oneof(:response, 0)

  field(:ad_group_ad_label_result, 17,
    type: Google.Ads.Googleads.V2.Services.MutateAdGroupAdLabelResult,
    oneof: 0
  )

  field(:ad_group_ad_result, 1,
    type: Google.Ads.Googleads.V2.Services.MutateAdGroupAdResult,
    oneof: 0
  )

  field(:ad_group_bid_modifier_result, 2,
    type: Google.Ads.Googleads.V2.Services.MutateAdGroupBidModifierResult,
    oneof: 0
  )

  field(:ad_group_criterion_label_result, 18,
    type: Google.Ads.Googleads.V2.Services.MutateAdGroupCriterionLabelResult,
    oneof: 0
  )

  field(:ad_group_criterion_result, 3,
    type: Google.Ads.Googleads.V2.Services.MutateAdGroupCriterionResult,
    oneof: 0
  )

  field(:ad_group_extension_setting_result, 19,
    type: Google.Ads.Googleads.V2.Services.MutateAdGroupExtensionSettingResult,
    oneof: 0
  )

  field(:ad_group_feed_result, 20,
    type: Google.Ads.Googleads.V2.Services.MutateAdGroupFeedResult,
    oneof: 0
  )

  field(:ad_group_label_result, 21,
    type: Google.Ads.Googleads.V2.Services.MutateAdGroupLabelResult,
    oneof: 0
  )

  field(:ad_group_result, 5, type: Google.Ads.Googleads.V2.Services.MutateAdGroupResult, oneof: 0)

  field(:ad_parameter_result, 22,
    type: Google.Ads.Googleads.V2.Services.MutateAdParameterResult,
    oneof: 0
  )

  field(:asset_result, 23, type: Google.Ads.Googleads.V2.Services.MutateAssetResult, oneof: 0)

  field(:bidding_strategy_result, 6,
    type: Google.Ads.Googleads.V2.Services.MutateBiddingStrategyResult,
    oneof: 0
  )

  field(:campaign_bid_modifier_result, 7,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignBidModifierResult,
    oneof: 0
  )

  field(:campaign_budget_result, 8,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignBudgetResult,
    oneof: 0
  )

  field(:campaign_criterion_result, 13,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignCriterionResult,
    oneof: 0
  )

  field(:campaign_draft_result, 24,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignDraftResult,
    oneof: 0
  )

  field(:campaign_experiment_result, 25,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignExperimentResult,
    oneof: 0
  )

  field(:campaign_extension_setting_result, 26,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignExtensionSettingResult,
    oneof: 0
  )

  field(:campaign_feed_result, 27,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignFeedResult,
    oneof: 0
  )

  field(:campaign_label_result, 28,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignLabelResult,
    oneof: 0
  )

  field(:campaign_result, 10,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignResult,
    oneof: 0
  )

  field(:campaign_shared_set_result, 11,
    type: Google.Ads.Googleads.V2.Services.MutateCampaignSharedSetResult,
    oneof: 0
  )

  field(:conversion_action_result, 12,
    type: Google.Ads.Googleads.V2.Services.MutateConversionActionResult,
    oneof: 0
  )

  field(:customer_extension_setting_result, 30,
    type: Google.Ads.Googleads.V2.Services.MutateCustomerExtensionSettingResult,
    oneof: 0
  )

  field(:customer_feed_result, 31,
    type: Google.Ads.Googleads.V2.Services.MutateCustomerFeedResult,
    oneof: 0
  )

  field(:customer_label_result, 32,
    type: Google.Ads.Googleads.V2.Services.MutateCustomerLabelResult,
    oneof: 0
  )

  field(:customer_negative_criterion_result, 34,
    type: Google.Ads.Googleads.V2.Services.MutateCustomerNegativeCriteriaResult,
    oneof: 0
  )

  field(:customer_result, 35,
    type: Google.Ads.Googleads.V2.Services.MutateCustomerResult,
    oneof: 0
  )

  field(:extension_feed_item_result, 36,
    type: Google.Ads.Googleads.V2.Services.MutateExtensionFeedItemResult,
    oneof: 0
  )

  field(:feed_item_result, 37,
    type: Google.Ads.Googleads.V2.Services.MutateFeedItemResult,
    oneof: 0
  )

  field(:feed_item_target_result, 38,
    type: Google.Ads.Googleads.V2.Services.MutateFeedItemTargetResult,
    oneof: 0
  )

  field(:feed_mapping_result, 39,
    type: Google.Ads.Googleads.V2.Services.MutateFeedMappingResult,
    oneof: 0
  )

  field(:feed_result, 40, type: Google.Ads.Googleads.V2.Services.MutateFeedResult, oneof: 0)
  field(:label_result, 41, type: Google.Ads.Googleads.V2.Services.MutateLabelResult, oneof: 0)

  field(:media_file_result, 42,
    type: Google.Ads.Googleads.V2.Services.MutateMediaFileResult,
    oneof: 0
  )

  field(:remarketing_action_result, 43,
    type: Google.Ads.Googleads.V2.Services.MutateRemarketingActionResult,
    oneof: 0
  )

  field(:shared_criterion_result, 14,
    type: Google.Ads.Googleads.V2.Services.MutateSharedCriterionResult,
    oneof: 0
  )

  field(:shared_set_result, 15,
    type: Google.Ads.Googleads.V2.Services.MutateSharedSetResult,
    oneof: 0
  )

  field(:user_list_result, 16,
    type: Google.Ads.Googleads.V2.Services.MutateUserListResult,
    oneof: 0
  )
end

defmodule Google.Ads.Googleads.V2.Services.GoogleAdsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.GoogleAdsService"

  rpc(
    :Search,
    Google.Ads.Googleads.V2.Services.SearchGoogleAdsRequest,
    Google.Ads.Googleads.V2.Services.SearchGoogleAdsResponse
  )

  rpc(
    :Mutate,
    Google.Ads.Googleads.V2.Services.MutateGoogleAdsRequest,
    Google.Ads.Googleads.V2.Services.MutateGoogleAdsResponse
  )
end

defmodule Google.Ads.Googleads.V2.Services.GoogleAdsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.GoogleAdsService.Service
end
