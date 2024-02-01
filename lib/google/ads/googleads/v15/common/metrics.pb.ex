defmodule Google.Ads.Googleads.V15.Common.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :absolute_top_impression_percentage, 183,
    type: :double,
    json_name: "absoluteTopImpressionPercentage"

  field :active_view_cpm, 184, type: :double, json_name: "activeViewCpm"
  field :active_view_ctr, 185, type: :double, json_name: "activeViewCtr"
  field :active_view_impressions, 186, type: :int64, json_name: "activeViewImpressions"
  field :active_view_measurability, 187, type: :double, json_name: "activeViewMeasurability"

  field :active_view_measurable_cost_micros, 188,
    type: :int64,
    json_name: "activeViewMeasurableCostMicros"

  field :active_view_measurable_impressions, 189,
    type: :int64,
    json_name: "activeViewMeasurableImpressions"

  field :active_view_viewability, 190, type: :double, json_name: "activeViewViewability"

  field :all_conversions_from_interactions_rate, 191,
    type: :double,
    json_name: "allConversionsFromInteractionsRate"

  field :all_conversions_value, 192, type: :double, json_name: "allConversionsValue"

  field :all_conversions_value_by_conversion_date, 240,
    type: :double,
    json_name: "allConversionsValueByConversionDate"

  field :all_new_customer_lifetime_value, 294,
    type: :double,
    json_name: "allNewCustomerLifetimeValue"

  field :all_conversions, 193, type: :double, json_name: "allConversions"

  field :all_conversions_by_conversion_date, 241,
    type: :double,
    json_name: "allConversionsByConversionDate"

  field :all_conversions_value_per_cost, 194,
    type: :double,
    json_name: "allConversionsValuePerCost"

  field :all_conversions_from_click_to_call, 195,
    type: :double,
    json_name: "allConversionsFromClickToCall"

  field :all_conversions_from_directions, 196,
    type: :double,
    json_name: "allConversionsFromDirections"

  field :all_conversions_from_interactions_value_per_interaction, 197,
    type: :double,
    json_name: "allConversionsFromInteractionsValuePerInteraction"

  field :all_conversions_from_menu, 198, type: :double, json_name: "allConversionsFromMenu"
  field :all_conversions_from_order, 199, type: :double, json_name: "allConversionsFromOrder"

  field :all_conversions_from_other_engagement, 200,
    type: :double,
    json_name: "allConversionsFromOtherEngagement"

  field :all_conversions_from_store_visit, 201,
    type: :double,
    json_name: "allConversionsFromStoreVisit"

  field :all_conversions_from_store_website, 202,
    type: :double,
    json_name: "allConversionsFromStoreWebsite"

  field :auction_insight_search_absolute_top_impression_percentage, 258,
    type: :double,
    json_name: "auctionInsightSearchAbsoluteTopImpressionPercentage"

  field :auction_insight_search_impression_share, 259,
    type: :double,
    json_name: "auctionInsightSearchImpressionShare"

  field :auction_insight_search_outranking_share, 260,
    type: :double,
    json_name: "auctionInsightSearchOutrankingShare"

  field :auction_insight_search_overlap_rate, 261,
    type: :double,
    json_name: "auctionInsightSearchOverlapRate"

  field :auction_insight_search_position_above_rate, 262,
    type: :double,
    json_name: "auctionInsightSearchPositionAboveRate"

  field :auction_insight_search_top_impression_percentage, 263,
    type: :double,
    json_name: "auctionInsightSearchTopImpressionPercentage"

  field :average_cost, 203, type: :double, json_name: "averageCost"
  field :average_cpc, 204, type: :double, json_name: "averageCpc"
  field :average_cpe, 205, type: :double, json_name: "averageCpe"
  field :average_cpm, 206, type: :double, json_name: "averageCpm"
  field :average_cpv, 207, type: :double, json_name: "averageCpv"
  field :average_page_views, 208, type: :double, json_name: "averagePageViews"
  field :average_time_on_site, 209, type: :double, json_name: "averageTimeOnSite"
  field :benchmark_average_max_cpc, 210, type: :double, json_name: "benchmarkAverageMaxCpc"

  field :biddable_app_install_conversions, 254,
    type: :double,
    json_name: "biddableAppInstallConversions"

  field :biddable_app_post_install_conversions, 255,
    type: :double,
    json_name: "biddableAppPostInstallConversions"

  field :benchmark_ctr, 211, type: :double, json_name: "benchmarkCtr"
  field :bounce_rate, 212, type: :double, json_name: "bounceRate"
  field :clicks, 131, type: :int64
  field :combined_clicks, 156, type: :int64, json_name: "combinedClicks"
  field :combined_clicks_per_query, 157, type: :double, json_name: "combinedClicksPerQuery"
  field :combined_queries, 158, type: :int64, json_name: "combinedQueries"

  field :content_budget_lost_impression_share, 159,
    type: :double,
    json_name: "contentBudgetLostImpressionShare"

  field :content_impression_share, 160, type: :double, json_name: "contentImpressionShare"

  field :conversion_last_received_request_date_time, 161,
    type: :string,
    json_name: "conversionLastReceivedRequestDateTime"

  field :conversion_last_conversion_date, 162,
    type: :string,
    json_name: "conversionLastConversionDate"

  field :content_rank_lost_impression_share, 163,
    type: :double,
    json_name: "contentRankLostImpressionShare"

  field :conversions_from_interactions_rate, 164,
    type: :double,
    json_name: "conversionsFromInteractionsRate"

  field :conversions_value, 165, type: :double, json_name: "conversionsValue"

  field :conversions_value_by_conversion_date, 242,
    type: :double,
    json_name: "conversionsValueByConversionDate"

  field :new_customer_lifetime_value, 293, type: :double, json_name: "newCustomerLifetimeValue"
  field :conversions_value_per_cost, 166, type: :double, json_name: "conversionsValuePerCost"

  field :conversions_from_interactions_value_per_interaction, 167,
    type: :double,
    json_name: "conversionsFromInteractionsValuePerInteraction"

  field :conversions, 168, type: :double

  field :conversions_by_conversion_date, 243,
    type: :double,
    json_name: "conversionsByConversionDate"

  field :cost_micros, 169, type: :int64, json_name: "costMicros"
  field :cost_per_all_conversions, 170, type: :double, json_name: "costPerAllConversions"
  field :cost_per_conversion, 171, type: :double, json_name: "costPerConversion"

  field :cost_per_current_model_attributed_conversion, 172,
    type: :double,
    json_name: "costPerCurrentModelAttributedConversion"

  field :cross_device_conversions, 173, type: :double, json_name: "crossDeviceConversions"

  field :cross_device_conversions_value_micros, 312,
    type: :int64,
    json_name: "crossDeviceConversionsValueMicros"

  field :ctr, 174, type: :double

  field :current_model_attributed_conversions, 175,
    type: :double,
    json_name: "currentModelAttributedConversions"

  field :current_model_attributed_conversions_from_interactions_rate, 176,
    type: :double,
    json_name: "currentModelAttributedConversionsFromInteractionsRate"

  field :current_model_attributed_conversions_from_interactions_value_per_interaction, 177,
    type: :double,
    json_name: "currentModelAttributedConversionsFromInteractionsValuePerInteraction"

  field :current_model_attributed_conversions_value, 178,
    type: :double,
    json_name: "currentModelAttributedConversionsValue"

  field :current_model_attributed_conversions_value_per_cost, 179,
    type: :double,
    json_name: "currentModelAttributedConversionsValuePerCost"

  field :engagement_rate, 180, type: :double, json_name: "engagementRate"
  field :engagements, 181, type: :int64

  field :hotel_average_lead_value_micros, 213,
    type: :double,
    json_name: "hotelAverageLeadValueMicros"

  field :hotel_commission_rate_micros, 256, type: :int64, json_name: "hotelCommissionRateMicros"

  field :hotel_expected_commission_cost, 257,
    type: :double,
    json_name: "hotelExpectedCommissionCost"

  field :hotel_price_difference_percentage, 214,
    type: :double,
    json_name: "hotelPriceDifferencePercentage"

  field :hotel_eligible_impressions, 215, type: :int64, json_name: "hotelEligibleImpressions"

  field :historical_creative_quality_score, 80,
    type: Google.Ads.Googleads.V15.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalCreativeQualityScore",
    enum: true

  field :historical_landing_page_quality_score, 81,
    type: Google.Ads.Googleads.V15.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalLandingPageQualityScore",
    enum: true

  field :historical_quality_score, 216, type: :int64, json_name: "historicalQualityScore"

  field :historical_search_predicted_ctr, 83,
    type: Google.Ads.Googleads.V15.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalSearchPredictedCtr",
    enum: true

  field :gmail_forwards, 217, type: :int64, json_name: "gmailForwards"
  field :gmail_saves, 218, type: :int64, json_name: "gmailSaves"
  field :gmail_secondary_clicks, 219, type: :int64, json_name: "gmailSecondaryClicks"
  field :impressions_from_store_reach, 220, type: :int64, json_name: "impressionsFromStoreReach"
  field :impressions, 221, type: :int64
  field :interaction_rate, 222, type: :double, json_name: "interactionRate"
  field :interactions, 223, type: :int64

  field :interaction_event_types, 100,
    repeated: true,
    type: Google.Ads.Googleads.V15.Enums.InteractionEventTypeEnum.InteractionEventType,
    json_name: "interactionEventTypes",
    enum: true

  field :invalid_click_rate, 224, type: :double, json_name: "invalidClickRate"
  field :invalid_clicks, 225, type: :int64, json_name: "invalidClicks"
  field :message_chats, 226, type: :int64, json_name: "messageChats"
  field :message_impressions, 227, type: :int64, json_name: "messageImpressions"
  field :message_chat_rate, 228, type: :double, json_name: "messageChatRate"

  field :mobile_friendly_clicks_percentage, 229,
    type: :double,
    json_name: "mobileFriendlyClicksPercentage"

  field :optimization_score_uplift, 247, type: :double, json_name: "optimizationScoreUplift"
  field :optimization_score_url, 248, type: :string, json_name: "optimizationScoreUrl"
  field :organic_clicks, 230, type: :int64, json_name: "organicClicks"
  field :organic_clicks_per_query, 231, type: :double, json_name: "organicClicksPerQuery"
  field :organic_impressions, 232, type: :int64, json_name: "organicImpressions"

  field :organic_impressions_per_query, 233,
    type: :double,
    json_name: "organicImpressionsPerQuery"

  field :organic_queries, 234, type: :int64, json_name: "organicQueries"
  field :percent_new_visitors, 235, type: :double, json_name: "percentNewVisitors"
  field :phone_calls, 236, type: :int64, json_name: "phoneCalls"
  field :phone_impressions, 237, type: :int64, json_name: "phoneImpressions"
  field :phone_through_rate, 238, type: :double, json_name: "phoneThroughRate"
  field :relative_ctr, 239, type: :double, json_name: "relativeCtr"

  field :search_absolute_top_impression_share, 136,
    type: :double,
    json_name: "searchAbsoluteTopImpressionShare"

  field :search_budget_lost_absolute_top_impression_share, 137,
    type: :double,
    json_name: "searchBudgetLostAbsoluteTopImpressionShare"

  field :search_budget_lost_impression_share, 138,
    type: :double,
    json_name: "searchBudgetLostImpressionShare"

  field :search_budget_lost_top_impression_share, 139,
    type: :double,
    json_name: "searchBudgetLostTopImpressionShare"

  field :search_click_share, 140, type: :double, json_name: "searchClickShare"

  field :search_exact_match_impression_share, 141,
    type: :double,
    json_name: "searchExactMatchImpressionShare"

  field :search_impression_share, 142, type: :double, json_name: "searchImpressionShare"

  field :search_rank_lost_absolute_top_impression_share, 143,
    type: :double,
    json_name: "searchRankLostAbsoluteTopImpressionShare"

  field :search_rank_lost_impression_share, 144,
    type: :double,
    json_name: "searchRankLostImpressionShare"

  field :search_rank_lost_top_impression_share, 145,
    type: :double,
    json_name: "searchRankLostTopImpressionShare"

  field :search_top_impression_share, 146, type: :double, json_name: "searchTopImpressionShare"

  field :search_volume, 295,
    type: Google.Ads.Googleads.V15.Common.SearchVolumeRange,
    json_name: "searchVolume"

  field :speed_score, 147, type: :int64, json_name: "speedScore"
  field :average_target_cpa_micros, 290, type: :int64, json_name: "averageTargetCpaMicros"
  field :average_target_roas, 250, type: :double, json_name: "averageTargetRoas"
  field :top_impression_percentage, 148, type: :double, json_name: "topImpressionPercentage"

  field :valid_accelerated_mobile_pages_clicks_percentage, 149,
    type: :double,
    json_name: "validAcceleratedMobilePagesClicksPercentage"

  field :value_per_all_conversions, 150, type: :double, json_name: "valuePerAllConversions"

  field :value_per_all_conversions_by_conversion_date, 244,
    type: :double,
    json_name: "valuePerAllConversionsByConversionDate"

  field :value_per_conversion, 151, type: :double, json_name: "valuePerConversion"

  field :value_per_conversions_by_conversion_date, 245,
    type: :double,
    json_name: "valuePerConversionsByConversionDate"

  field :value_per_current_model_attributed_conversion, 152,
    type: :double,
    json_name: "valuePerCurrentModelAttributedConversion"

  field :video_quartile_p100_rate, 132, type: :double, json_name: "videoQuartileP100Rate"
  field :video_quartile_p25_rate, 133, type: :double, json_name: "videoQuartileP25Rate"
  field :video_quartile_p50_rate, 134, type: :double, json_name: "videoQuartileP50Rate"
  field :video_quartile_p75_rate, 135, type: :double, json_name: "videoQuartileP75Rate"
  field :video_view_rate, 153, type: :double, json_name: "videoViewRate"
  field :video_views, 154, type: :int64, json_name: "videoViews"
  field :view_through_conversions, 155, type: :int64, json_name: "viewThroughConversions"
  field :sk_ad_network_installs, 246, type: :int64, json_name: "skAdNetworkInstalls"

  field :sk_ad_network_total_conversions, 292,
    type: :int64,
    json_name: "skAdNetworkTotalConversions"

  field :publisher_purchased_clicks, 264, type: :int64, json_name: "publisherPurchasedClicks"
  field :publisher_organic_clicks, 265, type: :int64, json_name: "publisherOrganicClicks"
  field :publisher_unknown_clicks, 266, type: :int64, json_name: "publisherUnknownClicks"

  field :all_conversions_from_location_asset_click_to_call, 267,
    type: :double,
    json_name: "allConversionsFromLocationAssetClickToCall"

  field :all_conversions_from_location_asset_directions, 268,
    type: :double,
    json_name: "allConversionsFromLocationAssetDirections"

  field :all_conversions_from_location_asset_menu, 269,
    type: :double,
    json_name: "allConversionsFromLocationAssetMenu"

  field :all_conversions_from_location_asset_order, 270,
    type: :double,
    json_name: "allConversionsFromLocationAssetOrder"

  field :all_conversions_from_location_asset_other_engagement, 271,
    type: :double,
    json_name: "allConversionsFromLocationAssetOtherEngagement"

  field :all_conversions_from_location_asset_store_visits, 272,
    type: :double,
    json_name: "allConversionsFromLocationAssetStoreVisits"

  field :all_conversions_from_location_asset_website, 273,
    type: :double,
    json_name: "allConversionsFromLocationAssetWebsite"

  field :eligible_impressions_from_location_asset_store_reach, 274,
    type: :int64,
    json_name: "eligibleImpressionsFromLocationAssetStoreReach"

  field :view_through_conversions_from_location_asset_click_to_call, 275,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetClickToCall"

  field :view_through_conversions_from_location_asset_directions, 276,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetDirections"

  field :view_through_conversions_from_location_asset_menu, 277,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetMenu"

  field :view_through_conversions_from_location_asset_order, 278,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetOrder"

  field :view_through_conversions_from_location_asset_other_engagement, 279,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetOtherEngagement"

  field :view_through_conversions_from_location_asset_store_visits, 280,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetStoreVisits"

  field :view_through_conversions_from_location_asset_website, 281,
    type: :double,
    json_name: "viewThroughConversionsFromLocationAssetWebsite"

  field :orders, 296, type: :double
  field :average_order_value_micros, 297, type: :int64, json_name: "averageOrderValueMicros"
  field :average_cart_size, 298, type: :double, json_name: "averageCartSize"
  field :cost_of_goods_sold_micros, 299, type: :int64, json_name: "costOfGoodsSoldMicros"
  field :gross_profit_micros, 300, type: :int64, json_name: "grossProfitMicros"
  field :gross_profit_margin, 301, type: :double, json_name: "grossProfitMargin"
  field :revenue_micros, 302, type: :int64, json_name: "revenueMicros"
  field :units_sold, 303, type: :double, json_name: "unitsSold"

  field :cross_sell_cost_of_goods_sold_micros, 304,
    type: :int64,
    json_name: "crossSellCostOfGoodsSoldMicros"

  field :cross_sell_gross_profit_micros, 305,
    type: :int64,
    json_name: "crossSellGrossProfitMicros"

  field :cross_sell_revenue_micros, 306, type: :int64, json_name: "crossSellRevenueMicros"
  field :cross_sell_units_sold, 307, type: :double, json_name: "crossSellUnitsSold"
  field :lead_cost_of_goods_sold_micros, 308, type: :int64, json_name: "leadCostOfGoodsSoldMicros"
  field :lead_gross_profit_micros, 309, type: :int64, json_name: "leadGrossProfitMicros"
  field :lead_revenue_micros, 310, type: :int64, json_name: "leadRevenueMicros"
  field :lead_units_sold, 311, type: :double, json_name: "leadUnitsSold"
  field :unique_users, 319, type: :int64, json_name: "uniqueUsers"

  field :average_impression_frequency_per_user, 320,
    type: :double,
    json_name: "averageImpressionFrequencyPerUser"
end

defmodule Google.Ads.Googleads.V15.Common.SearchVolumeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min, 1, type: :int64
  field :max, 2, type: :int64
end