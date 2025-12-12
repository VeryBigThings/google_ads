defmodule Google.Ads.Googleads.V4.Common.Metrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :absolute_top_impression_percentage, 95, type: Google.Protobuf.DoubleValue
  field :active_view_cpm, 1, type: Google.Protobuf.DoubleValue
  field :active_view_ctr, 79, type: Google.Protobuf.DoubleValue
  field :active_view_impressions, 2, type: Google.Protobuf.Int64Value
  field :active_view_measurability, 96, type: Google.Protobuf.DoubleValue
  field :active_view_measurable_cost_micros, 3, type: Google.Protobuf.Int64Value
  field :active_view_measurable_impressions, 4, type: Google.Protobuf.Int64Value
  field :active_view_viewability, 97, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_interactions_rate, 65, type: Google.Protobuf.DoubleValue
  field :all_conversions_value, 66, type: Google.Protobuf.DoubleValue
  field :all_conversions, 7, type: Google.Protobuf.DoubleValue
  field :all_conversions_value_per_cost, 62, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_click_to_call, 118, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_directions, 119, type: Google.Protobuf.DoubleValue

  field :all_conversions_from_interactions_value_per_interaction, 67,
    type: Google.Protobuf.DoubleValue

  field :all_conversions_from_menu, 120, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_order, 121, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_other_engagement, 122, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_store_visit, 123, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_store_website, 124, type: Google.Protobuf.DoubleValue
  field :average_cost, 8, type: Google.Protobuf.DoubleValue
  field :average_cpc, 9, type: Google.Protobuf.DoubleValue
  field :average_cpe, 98, type: Google.Protobuf.DoubleValue
  field :average_cpm, 10, type: Google.Protobuf.DoubleValue
  field :average_cpv, 11, type: Google.Protobuf.DoubleValue
  field :average_page_views, 99, type: Google.Protobuf.DoubleValue
  field :average_time_on_site, 84, type: Google.Protobuf.DoubleValue
  field :benchmark_average_max_cpc, 14, type: Google.Protobuf.DoubleValue
  field :benchmark_ctr, 77, type: Google.Protobuf.DoubleValue
  field :bounce_rate, 15, type: Google.Protobuf.DoubleValue
  field :clicks, 19, type: Google.Protobuf.Int64Value
  field :combined_clicks, 115, type: Google.Protobuf.Int64Value
  field :combined_clicks_per_query, 116, type: Google.Protobuf.DoubleValue
  field :combined_queries, 117, type: Google.Protobuf.Int64Value
  field :content_budget_lost_impression_share, 20, type: Google.Protobuf.DoubleValue
  field :content_impression_share, 21, type: Google.Protobuf.DoubleValue
  field :conversion_last_received_request_date_time, 73, type: Google.Protobuf.StringValue
  field :conversion_last_conversion_date, 74, type: Google.Protobuf.StringValue
  field :content_rank_lost_impression_share, 22, type: Google.Protobuf.DoubleValue
  field :conversions_from_interactions_rate, 69, type: Google.Protobuf.DoubleValue
  field :conversions_value, 70, type: Google.Protobuf.DoubleValue
  field :conversions_value_per_cost, 71, type: Google.Protobuf.DoubleValue

  field :conversions_from_interactions_value_per_interaction, 72,
    type: Google.Protobuf.DoubleValue

  field :conversions, 25, type: Google.Protobuf.DoubleValue
  field :cost_micros, 26, type: Google.Protobuf.Int64Value
  field :cost_per_all_conversions, 68, type: Google.Protobuf.DoubleValue
  field :cost_per_conversion, 28, type: Google.Protobuf.DoubleValue
  field :cost_per_current_model_attributed_conversion, 106, type: Google.Protobuf.DoubleValue
  field :cross_device_conversions, 29, type: Google.Protobuf.DoubleValue
  field :ctr, 30, type: Google.Protobuf.DoubleValue
  field :current_model_attributed_conversions, 101, type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_from_interactions_rate, 102,
    type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_from_interactions_value_per_interaction, 103,
    type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_value, 104, type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_value_per_cost, 105,
    type: Google.Protobuf.DoubleValue

  field :engagement_rate, 31, type: Google.Protobuf.DoubleValue
  field :engagements, 32, type: Google.Protobuf.Int64Value
  field :hotel_average_lead_value_micros, 75, type: Google.Protobuf.DoubleValue
  field :hotel_price_difference_percentage, 129, type: Google.Protobuf.DoubleValue
  field :hotel_eligible_impressions, 130, type: Google.Protobuf.Int64Value

  field :historical_creative_quality_score, 80,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_landing_page_quality_score, 81,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_quality_score, 82, type: Google.Protobuf.Int64Value

  field :historical_search_predicted_ctr, 83,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :gmail_forwards, 85, type: Google.Protobuf.Int64Value
  field :gmail_saves, 86, type: Google.Protobuf.Int64Value
  field :gmail_secondary_clicks, 87, type: Google.Protobuf.Int64Value
  field :impressions_from_store_reach, 125, type: Google.Protobuf.Int64Value
  field :impressions, 37, type: Google.Protobuf.Int64Value
  field :interaction_rate, 38, type: Google.Protobuf.DoubleValue
  field :interactions, 39, type: Google.Protobuf.Int64Value

  field :interaction_event_types, 100,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.InteractionEventTypeEnum.InteractionEventType,
    enum: true

  field :invalid_click_rate, 40, type: Google.Protobuf.DoubleValue
  field :invalid_clicks, 41, type: Google.Protobuf.Int64Value
  field :message_chats, 126, type: Google.Protobuf.Int64Value
  field :message_impressions, 127, type: Google.Protobuf.Int64Value
  field :message_chat_rate, 128, type: Google.Protobuf.DoubleValue
  field :mobile_friendly_clicks_percentage, 109, type: Google.Protobuf.DoubleValue
  field :organic_clicks, 110, type: Google.Protobuf.Int64Value
  field :organic_clicks_per_query, 111, type: Google.Protobuf.DoubleValue
  field :organic_impressions, 112, type: Google.Protobuf.Int64Value
  field :organic_impressions_per_query, 113, type: Google.Protobuf.DoubleValue
  field :organic_queries, 114, type: Google.Protobuf.Int64Value
  field :percent_new_visitors, 42, type: Google.Protobuf.DoubleValue
  field :phone_calls, 43, type: Google.Protobuf.Int64Value
  field :phone_impressions, 44, type: Google.Protobuf.Int64Value
  field :phone_through_rate, 45, type: Google.Protobuf.DoubleValue
  field :relative_ctr, 46, type: Google.Protobuf.DoubleValue
  field :search_absolute_top_impression_share, 78, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_absolute_top_impression_share, 88, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_impression_share, 47, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_top_impression_share, 89, type: Google.Protobuf.DoubleValue
  field :search_click_share, 48, type: Google.Protobuf.DoubleValue
  field :search_exact_match_impression_share, 49, type: Google.Protobuf.DoubleValue
  field :search_impression_share, 50, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_absolute_top_impression_share, 90, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_impression_share, 51, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_top_impression_share, 91, type: Google.Protobuf.DoubleValue
  field :search_top_impression_share, 92, type: Google.Protobuf.DoubleValue
  field :speed_score, 107, type: Google.Protobuf.Int64Value
  field :top_impression_percentage, 93, type: Google.Protobuf.DoubleValue
  field :valid_accelerated_mobile_pages_clicks_percentage, 108, type: Google.Protobuf.DoubleValue
  field :value_per_all_conversions, 52, type: Google.Protobuf.DoubleValue
  field :value_per_conversion, 53, type: Google.Protobuf.DoubleValue
  field :value_per_current_model_attributed_conversion, 94, type: Google.Protobuf.DoubleValue
  field :video_quartile_100_rate, 54, type: Google.Protobuf.DoubleValue
  field :video_quartile_25_rate, 55, type: Google.Protobuf.DoubleValue
  field :video_quartile_50_rate, 56, type: Google.Protobuf.DoubleValue
  field :video_quartile_75_rate, 57, type: Google.Protobuf.DoubleValue
  field :video_view_rate, 58, type: Google.Protobuf.DoubleValue
  field :video_views, 59, type: Google.Protobuf.Int64Value
  field :view_through_conversions, 60, type: Google.Protobuf.Int64Value
end
