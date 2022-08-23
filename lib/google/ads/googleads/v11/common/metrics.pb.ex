defmodule Google.Ads.Googleads.V11.Common.Metrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          absolute_top_impression_percentage: float | :infinity | :negative_infinity | :nan,
          active_view_cpm: float | :infinity | :negative_infinity | :nan,
          active_view_ctr: float | :infinity | :negative_infinity | :nan,
          active_view_impressions: integer,
          active_view_measurability: float | :infinity | :negative_infinity | :nan,
          active_view_measurable_cost_micros: integer,
          active_view_measurable_impressions: integer,
          active_view_viewability: float | :infinity | :negative_infinity | :nan,
          all_conversions_from_interactions_rate: float | :infinity | :negative_infinity | :nan,
          all_conversions_value: float | :infinity | :negative_infinity | :nan,
          all_conversions_value_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          all_conversions: float | :infinity | :negative_infinity | :nan,
          all_conversions_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          all_conversions_value_per_cost: float | :infinity | :negative_infinity | :nan,
          all_conversions_from_click_to_call: float | :infinity | :negative_infinity | :nan,
          all_conversions_from_directions: float | :infinity | :negative_infinity | :nan,
          all_conversions_from_interactions_value_per_interaction:
            float | :infinity | :negative_infinity | :nan,
          all_conversions_from_menu: float | :infinity | :negative_infinity | :nan,
          all_conversions_from_order: float | :infinity | :negative_infinity | :nan,
          all_conversions_from_other_engagement: float | :infinity | :negative_infinity | :nan,
          all_conversions_from_store_visit: float | :infinity | :negative_infinity | :nan,
          all_conversions_from_store_website: float | :infinity | :negative_infinity | :nan,
          auction_insight_search_absolute_top_impression_percentage:
            float | :infinity | :negative_infinity | :nan,
          auction_insight_search_impression_share: float | :infinity | :negative_infinity | :nan,
          auction_insight_search_outranking_share: float | :infinity | :negative_infinity | :nan,
          auction_insight_search_overlap_rate: float | :infinity | :negative_infinity | :nan,
          auction_insight_search_position_above_rate:
            float | :infinity | :negative_infinity | :nan,
          auction_insight_search_top_impression_percentage:
            float | :infinity | :negative_infinity | :nan,
          average_cost: float | :infinity | :negative_infinity | :nan,
          average_cpc: float | :infinity | :negative_infinity | :nan,
          average_cpe: float | :infinity | :negative_infinity | :nan,
          average_cpm: float | :infinity | :negative_infinity | :nan,
          average_cpv: float | :infinity | :negative_infinity | :nan,
          average_page_views: float | :infinity | :negative_infinity | :nan,
          average_time_on_site: float | :infinity | :negative_infinity | :nan,
          benchmark_average_max_cpc: float | :infinity | :negative_infinity | :nan,
          biddable_app_install_conversions: float | :infinity | :negative_infinity | :nan,
          biddable_app_post_install_conversions: float | :infinity | :negative_infinity | :nan,
          benchmark_ctr: float | :infinity | :negative_infinity | :nan,
          bounce_rate: float | :infinity | :negative_infinity | :nan,
          clicks: integer,
          combined_clicks: integer,
          combined_clicks_per_query: float | :infinity | :negative_infinity | :nan,
          combined_queries: integer,
          content_budget_lost_impression_share: float | :infinity | :negative_infinity | :nan,
          content_impression_share: float | :infinity | :negative_infinity | :nan,
          conversion_last_received_request_date_time: String.t(),
          conversion_last_conversion_date: String.t(),
          content_rank_lost_impression_share: float | :infinity | :negative_infinity | :nan,
          conversions_from_interactions_rate: float | :infinity | :negative_infinity | :nan,
          conversions_value: float | :infinity | :negative_infinity | :nan,
          conversions_value_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          conversions_value_per_cost: float | :infinity | :negative_infinity | :nan,
          conversions_from_interactions_value_per_interaction:
            float | :infinity | :negative_infinity | :nan,
          conversions: float | :infinity | :negative_infinity | :nan,
          conversions_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          cost_micros: integer,
          cost_per_all_conversions: float | :infinity | :negative_infinity | :nan,
          cost_per_conversion: float | :infinity | :negative_infinity | :nan,
          cost_per_current_model_attributed_conversion:
            float | :infinity | :negative_infinity | :nan,
          cross_device_conversions: float | :infinity | :negative_infinity | :nan,
          ctr: float | :infinity | :negative_infinity | :nan,
          current_model_attributed_conversions: float | :infinity | :negative_infinity | :nan,
          current_model_attributed_conversions_from_interactions_rate:
            float | :infinity | :negative_infinity | :nan,
          current_model_attributed_conversions_from_interactions_value_per_interaction:
            float | :infinity | :negative_infinity | :nan,
          current_model_attributed_conversions_value:
            float | :infinity | :negative_infinity | :nan,
          current_model_attributed_conversions_value_per_cost:
            float | :infinity | :negative_infinity | :nan,
          engagement_rate: float | :infinity | :negative_infinity | :nan,
          engagements: integer,
          hotel_average_lead_value_micros: float | :infinity | :negative_infinity | :nan,
          hotel_commission_rate_micros: integer,
          hotel_expected_commission_cost: float | :infinity | :negative_infinity | :nan,
          hotel_price_difference_percentage: float | :infinity | :negative_infinity | :nan,
          hotel_eligible_impressions: integer,
          historical_creative_quality_score:
            Google.Ads.Googleads.V11.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          historical_landing_page_quality_score:
            Google.Ads.Googleads.V11.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          historical_quality_score: integer,
          historical_search_predicted_ctr:
            Google.Ads.Googleads.V11.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          gmail_forwards: integer,
          gmail_saves: integer,
          gmail_secondary_clicks: integer,
          impressions_from_store_reach: integer,
          impressions: integer,
          interaction_rate: float | :infinity | :negative_infinity | :nan,
          interactions: integer,
          interaction_event_types: [
            Google.Ads.Googleads.V11.Enums.InteractionEventTypeEnum.InteractionEventType.t()
          ],
          invalid_click_rate: float | :infinity | :negative_infinity | :nan,
          invalid_clicks: integer,
          message_chats: integer,
          message_impressions: integer,
          message_chat_rate: float | :infinity | :negative_infinity | :nan,
          mobile_friendly_clicks_percentage: float | :infinity | :negative_infinity | :nan,
          optimization_score_uplift: float | :infinity | :negative_infinity | :nan,
          optimization_score_url: String.t(),
          organic_clicks: integer,
          organic_clicks_per_query: float | :infinity | :negative_infinity | :nan,
          organic_impressions: integer,
          organic_impressions_per_query: float | :infinity | :negative_infinity | :nan,
          organic_queries: integer,
          percent_new_visitors: float | :infinity | :negative_infinity | :nan,
          phone_calls: integer,
          phone_impressions: integer,
          phone_through_rate: float | :infinity | :negative_infinity | :nan,
          relative_ctr: float | :infinity | :negative_infinity | :nan,
          search_absolute_top_impression_share: float | :infinity | :negative_infinity | :nan,
          search_budget_lost_absolute_top_impression_share:
            float | :infinity | :negative_infinity | :nan,
          search_budget_lost_impression_share: float | :infinity | :negative_infinity | :nan,
          search_budget_lost_top_impression_share: float | :infinity | :negative_infinity | :nan,
          search_click_share: float | :infinity | :negative_infinity | :nan,
          search_exact_match_impression_share: float | :infinity | :negative_infinity | :nan,
          search_impression_share: float | :infinity | :negative_infinity | :nan,
          search_rank_lost_absolute_top_impression_share:
            float | :infinity | :negative_infinity | :nan,
          search_rank_lost_impression_share: float | :infinity | :negative_infinity | :nan,
          search_rank_lost_top_impression_share: float | :infinity | :negative_infinity | :nan,
          search_top_impression_share: float | :infinity | :negative_infinity | :nan,
          speed_score: integer,
          top_impression_percentage: float | :infinity | :negative_infinity | :nan,
          valid_accelerated_mobile_pages_clicks_percentage:
            float | :infinity | :negative_infinity | :nan,
          value_per_all_conversions: float | :infinity | :negative_infinity | :nan,
          value_per_all_conversions_by_conversion_date:
            float | :infinity | :negative_infinity | :nan,
          value_per_conversion: float | :infinity | :negative_infinity | :nan,
          value_per_conversions_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          value_per_current_model_attributed_conversion:
            float | :infinity | :negative_infinity | :nan,
          video_quartile_p100_rate: float | :infinity | :negative_infinity | :nan,
          video_quartile_p25_rate: float | :infinity | :negative_infinity | :nan,
          video_quartile_p50_rate: float | :infinity | :negative_infinity | :nan,
          video_quartile_p75_rate: float | :infinity | :negative_infinity | :nan,
          video_view_rate: float | :infinity | :negative_infinity | :nan,
          video_views: integer,
          view_through_conversions: integer,
          sk_ad_network_conversions: integer
        }

  defstruct absolute_top_impression_percentage: 0.0,
            active_view_cpm: 0.0,
            active_view_ctr: 0.0,
            active_view_impressions: 0,
            active_view_measurability: 0.0,
            active_view_measurable_cost_micros: 0,
            active_view_measurable_impressions: 0,
            active_view_viewability: 0.0,
            all_conversions_from_interactions_rate: 0.0,
            all_conversions_value: 0.0,
            all_conversions_value_by_conversion_date: 0.0,
            all_conversions: 0.0,
            all_conversions_by_conversion_date: 0.0,
            all_conversions_value_per_cost: 0.0,
            all_conversions_from_click_to_call: 0.0,
            all_conversions_from_directions: 0.0,
            all_conversions_from_interactions_value_per_interaction: 0.0,
            all_conversions_from_menu: 0.0,
            all_conversions_from_order: 0.0,
            all_conversions_from_other_engagement: 0.0,
            all_conversions_from_store_visit: 0.0,
            all_conversions_from_store_website: 0.0,
            auction_insight_search_absolute_top_impression_percentage: 0.0,
            auction_insight_search_impression_share: 0.0,
            auction_insight_search_outranking_share: 0.0,
            auction_insight_search_overlap_rate: 0.0,
            auction_insight_search_position_above_rate: 0.0,
            auction_insight_search_top_impression_percentage: 0.0,
            average_cost: 0.0,
            average_cpc: 0.0,
            average_cpe: 0.0,
            average_cpm: 0.0,
            average_cpv: 0.0,
            average_page_views: 0.0,
            average_time_on_site: 0.0,
            benchmark_average_max_cpc: 0.0,
            biddable_app_install_conversions: 0.0,
            biddable_app_post_install_conversions: 0.0,
            benchmark_ctr: 0.0,
            bounce_rate: 0.0,
            clicks: 0,
            combined_clicks: 0,
            combined_clicks_per_query: 0.0,
            combined_queries: 0,
            content_budget_lost_impression_share: 0.0,
            content_impression_share: 0.0,
            conversion_last_received_request_date_time: "",
            conversion_last_conversion_date: "",
            content_rank_lost_impression_share: 0.0,
            conversions_from_interactions_rate: 0.0,
            conversions_value: 0.0,
            conversions_value_by_conversion_date: 0.0,
            conversions_value_per_cost: 0.0,
            conversions_from_interactions_value_per_interaction: 0.0,
            conversions: 0.0,
            conversions_by_conversion_date: 0.0,
            cost_micros: 0,
            cost_per_all_conversions: 0.0,
            cost_per_conversion: 0.0,
            cost_per_current_model_attributed_conversion: 0.0,
            cross_device_conversions: 0.0,
            ctr: 0.0,
            current_model_attributed_conversions: 0.0,
            current_model_attributed_conversions_from_interactions_rate: 0.0,
            current_model_attributed_conversions_from_interactions_value_per_interaction: 0.0,
            current_model_attributed_conversions_value: 0.0,
            current_model_attributed_conversions_value_per_cost: 0.0,
            engagement_rate: 0.0,
            engagements: 0,
            hotel_average_lead_value_micros: 0.0,
            hotel_commission_rate_micros: 0,
            hotel_expected_commission_cost: 0.0,
            hotel_price_difference_percentage: 0.0,
            hotel_eligible_impressions: 0,
            historical_creative_quality_score: :UNSPECIFIED,
            historical_landing_page_quality_score: :UNSPECIFIED,
            historical_quality_score: 0,
            historical_search_predicted_ctr: :UNSPECIFIED,
            gmail_forwards: 0,
            gmail_saves: 0,
            gmail_secondary_clicks: 0,
            impressions_from_store_reach: 0,
            impressions: 0,
            interaction_rate: 0.0,
            interactions: 0,
            interaction_event_types: [],
            invalid_click_rate: 0.0,
            invalid_clicks: 0,
            message_chats: 0,
            message_impressions: 0,
            message_chat_rate: 0.0,
            mobile_friendly_clicks_percentage: 0.0,
            optimization_score_uplift: 0.0,
            optimization_score_url: "",
            organic_clicks: 0,
            organic_clicks_per_query: 0.0,
            organic_impressions: 0,
            organic_impressions_per_query: 0.0,
            organic_queries: 0,
            percent_new_visitors: 0.0,
            phone_calls: 0,
            phone_impressions: 0,
            phone_through_rate: 0.0,
            relative_ctr: 0.0,
            search_absolute_top_impression_share: 0.0,
            search_budget_lost_absolute_top_impression_share: 0.0,
            search_budget_lost_impression_share: 0.0,
            search_budget_lost_top_impression_share: 0.0,
            search_click_share: 0.0,
            search_exact_match_impression_share: 0.0,
            search_impression_share: 0.0,
            search_rank_lost_absolute_top_impression_share: 0.0,
            search_rank_lost_impression_share: 0.0,
            search_rank_lost_top_impression_share: 0.0,
            search_top_impression_share: 0.0,
            speed_score: 0,
            top_impression_percentage: 0.0,
            valid_accelerated_mobile_pages_clicks_percentage: 0.0,
            value_per_all_conversions: 0.0,
            value_per_all_conversions_by_conversion_date: 0.0,
            value_per_conversion: 0.0,
            value_per_conversions_by_conversion_date: 0.0,
            value_per_current_model_attributed_conversion: 0.0,
            video_quartile_p100_rate: 0.0,
            video_quartile_p25_rate: 0.0,
            video_quartile_p50_rate: 0.0,
            video_quartile_p75_rate: 0.0,
            video_view_rate: 0.0,
            video_views: 0,
            view_through_conversions: 0,
            sk_ad_network_conversions: 0

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
    type: Google.Ads.Googleads.V11.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalCreativeQualityScore",
    enum: true

  field :historical_landing_page_quality_score, 81,
    type: Google.Ads.Googleads.V11.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "historicalLandingPageQualityScore",
    enum: true

  field :historical_quality_score, 216, type: :int64, json_name: "historicalQualityScore"

  field :historical_search_predicted_ctr, 83,
    type: Google.Ads.Googleads.V11.Enums.QualityScoreBucketEnum.QualityScoreBucket,
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
    type: Google.Ads.Googleads.V11.Enums.InteractionEventTypeEnum.InteractionEventType,
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
  field :speed_score, 147, type: :int64, json_name: "speedScore"
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
  field :sk_ad_network_conversions, 246, type: :int64, json_name: "skAdNetworkConversions"
end
