defmodule Google.Ads.Googleads.V8Availabilities.Common.Metrics do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :absolute_top_impression_percentage, 183, type: :double
  field :active_view_cpm, 184, type: :double
  field :active_view_ctr, 185, type: :double
  field :active_view_impressions, 186, type: :int64
  field :active_view_measurability, 187, type: :double
  field :active_view_measurable_cost_micros, 188, type: :int64
  field :active_view_measurable_impressions, 189, type: :int64
  field :active_view_viewability, 190, type: :double
  field :all_conversions_from_interactions_rate, 191, type: :double
  field :all_conversions_value, 192, type: :double
  field :all_conversions_value_by_conversion_date, 240, type: :double
  field :all_conversions, 193, type: :double
  field :all_conversions_by_conversion_date, 241, type: :double
  field :all_conversions_value_per_cost, 194, type: :double
  field :all_conversions_from_click_to_call, 195, type: :double
  field :all_conversions_from_directions, 196, type: :double
  field :all_conversions_from_interactions_value_per_interaction, 197, type: :double
  field :all_conversions_from_menu, 198, type: :double
  field :all_conversions_from_order, 199, type: :double
  field :all_conversions_from_other_engagement, 200, type: :double
  field :all_conversions_from_store_visit, 201, type: :double
  field :all_conversions_from_store_website, 202, type: :double
  field :average_cost, 203, type: :double
  field :average_cpc, 204, type: :double
  field :average_cpe, 205, type: :double
  field :average_cpm, 206, type: :double
  field :average_cpv, 207, type: :double
  field :average_page_views, 208, type: :double
  field :average_time_on_site, 209, type: :double
  field :benchmark_average_max_cpc, 210, type: :double
  field :benchmark_ctr, 211, type: :double
  field :bounce_rate, 212, type: :double
  field :clicks, 131, type: :int64
  field :combined_clicks, 156, type: :int64
  field :combined_clicks_per_query, 157, type: :double
  field :combined_queries, 158, type: :int64
  field :content_budget_lost_impression_share, 159, type: :double
  field :content_impression_share, 160, type: :double
  field :conversion_last_received_request_date_time, 161, type: :string
  field :conversion_last_conversion_date, 162, type: :string
  field :content_rank_lost_impression_share, 163, type: :double
  field :conversions_from_interactions_rate, 164, type: :double
  field :conversions_value, 165, type: :double
  field :conversions_value_by_conversion_date, 242, type: :double
  field :conversions_value_per_cost, 166, type: :double
  field :conversions_from_interactions_value_per_interaction, 167, type: :double
  field :conversions, 168, type: :double
  field :conversions_by_conversion_date, 243, type: :double
  field :cost_micros, 169, type: :int64
  field :cost_per_all_conversions, 170, type: :double
  field :cost_per_conversion, 171, type: :double
  field :cost_per_current_model_attributed_conversion, 172, type: :double
  field :cross_device_conversions, 173, type: :double
  field :ctr, 174, type: :double
  field :current_model_attributed_conversions, 175, type: :double
  field :current_model_attributed_conversions_from_interactions_rate, 176, type: :double

  field :current_model_attributed_conversions_from_interactions_value_per_interaction, 177,
    type: :double

  field :current_model_attributed_conversions_value, 178, type: :double
  field :current_model_attributed_conversions_value_per_cost, 179, type: :double
  field :engagement_rate, 180, type: :double
  field :engagements, 181, type: :int64
  field :hotel_average_lead_value_micros, 213, type: :double
  field :hotel_price_difference_percentage, 214, type: :double
  field :hotel_eligible_impressions, 215, type: :int64

  field :historical_creative_quality_score, 80,
    type: Google.Ads.Googleads.V8Availabilities.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_landing_page_quality_score, 81,
    type: Google.Ads.Googleads.V8Availabilities.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_quality_score, 216, type: :int64

  field :historical_search_predicted_ctr, 83,
    type: Google.Ads.Googleads.V8Availabilities.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :gmail_forwards, 217, type: :int64
  field :gmail_saves, 218, type: :int64
  field :gmail_secondary_clicks, 219, type: :int64
  field :impressions_from_store_reach, 220, type: :int64
  field :impressions, 221, type: :int64
  field :interaction_rate, 222, type: :double
  field :interactions, 223, type: :int64

  field :interaction_event_types, 100,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Enums.InteractionEventTypeEnum.InteractionEventType,
    enum: true

  field :invalid_click_rate, 224, type: :double
  field :invalid_clicks, 225, type: :int64
  field :message_chats, 226, type: :int64
  field :message_impressions, 227, type: :int64
  field :message_chat_rate, 228, type: :double
  field :mobile_friendly_clicks_percentage, 229, type: :double
  field :optimization_score_uplift, 247, type: :double
  field :optimization_score_url, 248, type: :string
  field :organic_clicks, 230, type: :int64
  field :organic_clicks_per_query, 231, type: :double
  field :organic_impressions, 232, type: :int64
  field :organic_impressions_per_query, 233, type: :double
  field :organic_queries, 234, type: :int64
  field :percent_new_visitors, 235, type: :double
  field :phone_calls, 236, type: :int64
  field :phone_impressions, 237, type: :int64
  field :phone_through_rate, 238, type: :double
  field :relative_ctr, 239, type: :double
  field :search_absolute_top_impression_share, 136, type: :double
  field :search_budget_lost_absolute_top_impression_share, 137, type: :double
  field :search_budget_lost_impression_share, 138, type: :double
  field :search_budget_lost_top_impression_share, 139, type: :double
  field :search_click_share, 140, type: :double
  field :search_exact_match_impression_share, 141, type: :double
  field :search_impression_share, 142, type: :double
  field :search_rank_lost_absolute_top_impression_share, 143, type: :double
  field :search_rank_lost_impression_share, 144, type: :double
  field :search_rank_lost_top_impression_share, 145, type: :double
  field :search_top_impression_share, 146, type: :double
  field :speed_score, 147, type: :int64
  field :top_impression_percentage, 148, type: :double
  field :valid_accelerated_mobile_pages_clicks_percentage, 149, type: :double
  field :value_per_all_conversions, 150, type: :double
  field :value_per_all_conversions_by_conversion_date, 244, type: :double
  field :value_per_conversion, 151, type: :double
  field :value_per_conversions_by_conversion_date, 245, type: :double
  field :value_per_current_model_attributed_conversion, 152, type: :double
  field :video_quartile_p100_rate, 132, type: :double
  field :video_quartile_p25_rate, 133, type: :double
  field :video_quartile_p50_rate, 134, type: :double
  field :video_quartile_p75_rate, 135, type: :double
  field :video_view_rate, 153, type: :double
  field :video_views, 154, type: :int64
  field :view_through_conversions, 155, type: :int64
  field :sk_ad_network_conversions, 246, type: :int64
end
