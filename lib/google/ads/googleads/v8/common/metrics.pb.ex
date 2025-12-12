defmodule Google.Ads.Googleads.V8.Common.Metrics do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :absolute_top_impression_percentage, 183, optional: true, type: :double
  field :active_view_cpm, 184, optional: true, type: :double
  field :active_view_ctr, 185, optional: true, type: :double
  field :active_view_impressions, 186, optional: true, type: :int64
  field :active_view_measurability, 187, optional: true, type: :double
  field :active_view_measurable_cost_micros, 188, optional: true, type: :int64
  field :active_view_measurable_impressions, 189, optional: true, type: :int64
  field :active_view_viewability, 190, optional: true, type: :double
  field :all_conversions_from_interactions_rate, 191, optional: true, type: :double
  field :all_conversions_value, 192, optional: true, type: :double
  field :all_conversions_value_by_conversion_date, 240, optional: true, type: :double
  field :all_conversions, 193, optional: true, type: :double
  field :all_conversions_by_conversion_date, 241, optional: true, type: :double
  field :all_conversions_value_per_cost, 194, optional: true, type: :double
  field :all_conversions_from_click_to_call, 195, optional: true, type: :double
  field :all_conversions_from_directions, 196, optional: true, type: :double

  field :all_conversions_from_interactions_value_per_interaction, 197,
    optional: true,
    type: :double

  field :all_conversions_from_menu, 198, optional: true, type: :double
  field :all_conversions_from_order, 199, optional: true, type: :double
  field :all_conversions_from_other_engagement, 200, optional: true, type: :double
  field :all_conversions_from_store_visit, 201, optional: true, type: :double
  field :all_conversions_from_store_website, 202, optional: true, type: :double
  field :average_cost, 203, optional: true, type: :double
  field :average_cpc, 204, optional: true, type: :double
  field :average_cpe, 205, optional: true, type: :double
  field :average_cpm, 206, optional: true, type: :double
  field :average_cpv, 207, optional: true, type: :double
  field :average_page_views, 208, optional: true, type: :double
  field :average_time_on_site, 209, optional: true, type: :double
  field :benchmark_average_max_cpc, 210, optional: true, type: :double
  field :benchmark_ctr, 211, optional: true, type: :double
  field :bounce_rate, 212, optional: true, type: :double
  field :clicks, 131, optional: true, type: :int64
  field :combined_clicks, 156, optional: true, type: :int64
  field :combined_clicks_per_query, 157, optional: true, type: :double
  field :combined_queries, 158, optional: true, type: :int64
  field :content_budget_lost_impression_share, 159, optional: true, type: :double
  field :content_impression_share, 160, optional: true, type: :double
  field :conversion_last_received_request_date_time, 161, optional: true, type: :string
  field :conversion_last_conversion_date, 162, optional: true, type: :string
  field :content_rank_lost_impression_share, 163, optional: true, type: :double
  field :conversions_from_interactions_rate, 164, optional: true, type: :double
  field :conversions_value, 165, optional: true, type: :double
  field :conversions_value_by_conversion_date, 242, optional: true, type: :double
  field :conversions_value_per_cost, 166, optional: true, type: :double
  field :conversions_from_interactions_value_per_interaction, 167, optional: true, type: :double
  field :conversions, 168, optional: true, type: :double
  field :conversions_by_conversion_date, 243, optional: true, type: :double
  field :cost_micros, 169, optional: true, type: :int64
  field :cost_per_all_conversions, 170, optional: true, type: :double
  field :cost_per_conversion, 171, optional: true, type: :double
  field :cost_per_current_model_attributed_conversion, 172, optional: true, type: :double
  field :cross_device_conversions, 173, optional: true, type: :double
  field :ctr, 174, optional: true, type: :double
  field :current_model_attributed_conversions, 175, optional: true, type: :double

  field :current_model_attributed_conversions_from_interactions_rate, 176,
    optional: true,
    type: :double

  field :current_model_attributed_conversions_from_interactions_value_per_interaction, 177,
    optional: true,
    type: :double

  field :current_model_attributed_conversions_value, 178, optional: true, type: :double
  field :current_model_attributed_conversions_value_per_cost, 179, optional: true, type: :double
  field :engagement_rate, 180, optional: true, type: :double
  field :engagements, 181, optional: true, type: :int64
  field :hotel_average_lead_value_micros, 213, optional: true, type: :double
  field :hotel_price_difference_percentage, 214, optional: true, type: :double
  field :hotel_eligible_impressions, 215, optional: true, type: :int64

  field :historical_creative_quality_score, 80,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_landing_page_quality_score, 81,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_quality_score, 216, optional: true, type: :int64

  field :historical_search_predicted_ctr, 83,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :gmail_forwards, 217, optional: true, type: :int64
  field :gmail_saves, 218, optional: true, type: :int64
  field :gmail_secondary_clicks, 219, optional: true, type: :int64
  field :impressions_from_store_reach, 220, optional: true, type: :int64
  field :impressions, 221, optional: true, type: :int64
  field :interaction_rate, 222, optional: true, type: :double
  field :interactions, 223, optional: true, type: :int64

  field :interaction_event_types, 100,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.InteractionEventTypeEnum.InteractionEventType,
    enum: true

  field :invalid_click_rate, 224, optional: true, type: :double
  field :invalid_clicks, 225, optional: true, type: :int64
  field :message_chats, 226, optional: true, type: :int64
  field :message_impressions, 227, optional: true, type: :int64
  field :message_chat_rate, 228, optional: true, type: :double
  field :mobile_friendly_clicks_percentage, 229, optional: true, type: :double
  field :optimization_score_uplift, 247, optional: true, type: :double
  field :optimization_score_url, 248, optional: true, type: :string
  field :organic_clicks, 230, optional: true, type: :int64
  field :organic_clicks_per_query, 231, optional: true, type: :double
  field :organic_impressions, 232, optional: true, type: :int64
  field :organic_impressions_per_query, 233, optional: true, type: :double
  field :organic_queries, 234, optional: true, type: :int64
  field :percent_new_visitors, 235, optional: true, type: :double
  field :phone_calls, 236, optional: true, type: :int64
  field :phone_impressions, 237, optional: true, type: :int64
  field :phone_through_rate, 238, optional: true, type: :double
  field :relative_ctr, 239, optional: true, type: :double
  field :search_absolute_top_impression_share, 136, optional: true, type: :double
  field :search_budget_lost_absolute_top_impression_share, 137, optional: true, type: :double
  field :search_budget_lost_impression_share, 138, optional: true, type: :double
  field :search_budget_lost_top_impression_share, 139, optional: true, type: :double
  field :search_click_share, 140, optional: true, type: :double
  field :search_exact_match_impression_share, 141, optional: true, type: :double
  field :search_impression_share, 142, optional: true, type: :double
  field :search_rank_lost_absolute_top_impression_share, 143, optional: true, type: :double
  field :search_rank_lost_impression_share, 144, optional: true, type: :double
  field :search_rank_lost_top_impression_share, 145, optional: true, type: :double
  field :search_top_impression_share, 146, optional: true, type: :double
  field :speed_score, 147, optional: true, type: :int64
  field :top_impression_percentage, 148, optional: true, type: :double
  field :valid_accelerated_mobile_pages_clicks_percentage, 149, optional: true, type: :double
  field :value_per_all_conversions, 150, optional: true, type: :double
  field :value_per_all_conversions_by_conversion_date, 244, optional: true, type: :double
  field :value_per_conversion, 151, optional: true, type: :double
  field :value_per_conversions_by_conversion_date, 245, optional: true, type: :double
  field :value_per_current_model_attributed_conversion, 152, optional: true, type: :double
  field :video_quartile_p100_rate, 132, optional: true, type: :double
  field :video_quartile_p25_rate, 133, optional: true, type: :double
  field :video_quartile_p50_rate, 134, optional: true, type: :double
  field :video_quartile_p75_rate, 135, optional: true, type: :double
  field :video_view_rate, 153, optional: true, type: :double
  field :video_views, 154, optional: true, type: :int64
  field :view_through_conversions, 155, optional: true, type: :int64
  field :sk_ad_network_conversions, 246, optional: true, type: :int64
end
