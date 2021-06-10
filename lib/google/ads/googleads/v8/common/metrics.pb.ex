defmodule Google.Ads.Googleads.V8.Common.Metrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          absolute_top_impression_percentage: Google.Protobuf.DoubleValue.t() | nil,
          active_view_cpm: Google.Protobuf.DoubleValue.t() | nil,
          active_view_ctr: Google.Protobuf.DoubleValue.t() | nil,
          active_view_impressions: Google.Protobuf.Int64Value.t() | nil,
          active_view_measurability: Google.Protobuf.DoubleValue.t() | nil,
          active_view_measurable_cost_micros: Google.Protobuf.Int64Value.t() | nil,
          active_view_measurable_impressions: Google.Protobuf.Int64Value.t() | nil,
          active_view_viewability: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_interactions_rate: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_value_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          all_conversions: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          all_conversions_value_per_cost: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_click_to_call: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_directions: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_interactions_value_per_interaction:
            Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_menu: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_order: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_other_engagement: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_store_visit: Google.Protobuf.DoubleValue.t() | nil,
          all_conversions_from_store_website: Google.Protobuf.DoubleValue.t() | nil,
          average_cost: Google.Protobuf.DoubleValue.t() | nil,
          average_cpc: Google.Protobuf.DoubleValue.t() | nil,
          average_cpe: Google.Protobuf.DoubleValue.t() | nil,
          average_cpm: Google.Protobuf.DoubleValue.t() | nil,
          average_cpv: Google.Protobuf.DoubleValue.t() | nil,
          average_page_views: Google.Protobuf.DoubleValue.t() | nil,
          average_time_on_site: Google.Protobuf.DoubleValue.t() | nil,
          benchmark_average_max_cpc: Google.Protobuf.DoubleValue.t() | nil,
          benchmark_ctr: Google.Protobuf.DoubleValue.t() | nil,
          bounce_rate: Google.Protobuf.DoubleValue.t() | nil,
          clicks: Google.Protobuf.Int64Value.t() | nil,
          combined_clicks: Google.Protobuf.Int64Value.t() | nil,
          combined_clicks_per_query: Google.Protobuf.DoubleValue.t() | nil,
          combined_queries: Google.Protobuf.Int64Value.t() | nil,
          content_budget_lost_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          content_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          conversion_last_received_request_date_time: Google.Protobuf.StringValue.t() | nil,
          conversion_last_conversion_date: Google.Protobuf.StringValue.t() | nil,
          content_rank_lost_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          conversions_from_interactions_rate: Google.Protobuf.DoubleValue.t() | nil,
          conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          conversions_value_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          conversions_value_per_cost: Google.Protobuf.DoubleValue.t() | nil,
          conversions_from_interactions_value_per_interaction:
            Google.Protobuf.DoubleValue.t() | nil,
          conversions: Google.Protobuf.DoubleValue.t() | nil,
          conversions_by_conversion_date: float | :infinity | :negative_infinity | :nan,
          cost_micros: Google.Protobuf.Int64Value.t() | nil,
          cost_per_all_conversions: Google.Protobuf.DoubleValue.t() | nil,
          cost_per_conversion: Google.Protobuf.DoubleValue.t() | nil,
          cost_per_current_model_attributed_conversion: Google.Protobuf.DoubleValue.t() | nil,
          cross_device_conversions: Google.Protobuf.DoubleValue.t() | nil,
          ctr: Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions: Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions_from_interactions_rate:
            Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions_from_interactions_value_per_interaction:
            Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions_value: Google.Protobuf.DoubleValue.t() | nil,
          current_model_attributed_conversions_value_per_cost:
            Google.Protobuf.DoubleValue.t() | nil,
          engagement_rate: Google.Protobuf.DoubleValue.t() | nil,
          engagements: Google.Protobuf.Int64Value.t() | nil,
          hotel_average_lead_value_micros: Google.Protobuf.DoubleValue.t() | nil,
          hotel_price_difference_percentage: Google.Protobuf.DoubleValue.t() | nil,
          hotel_eligible_impressions: Google.Protobuf.Int64Value.t() | nil,
          historical_creative_quality_score:
            Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          historical_landing_page_quality_score:
            Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          historical_quality_score: Google.Protobuf.Int64Value.t() | nil,
          historical_search_predicted_ctr:
            Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          gmail_forwards: Google.Protobuf.Int64Value.t() | nil,
          gmail_saves: Google.Protobuf.Int64Value.t() | nil,
          gmail_secondary_clicks: Google.Protobuf.Int64Value.t() | nil,
          impressions_from_store_reach: Google.Protobuf.Int64Value.t() | nil,
          impressions: Google.Protobuf.Int64Value.t() | nil,
          interaction_rate: Google.Protobuf.DoubleValue.t() | nil,
          interactions: Google.Protobuf.Int64Value.t() | nil,
          interaction_event_types: [
            [Google.Ads.Googleads.V8.Enums.InteractionEventTypeEnum.InteractionEventType.t()]
          ],
          invalid_click_rate: Google.Protobuf.DoubleValue.t() | nil,
          invalid_clicks: Google.Protobuf.Int64Value.t() | nil,
          message_chats: Google.Protobuf.Int64Value.t() | nil,
          message_impressions: Google.Protobuf.Int64Value.t() | nil,
          message_chat_rate: Google.Protobuf.DoubleValue.t() | nil,
          mobile_friendly_clicks_percentage: Google.Protobuf.DoubleValue.t() | nil,
          optimization_score_uplift: Google.Protobuf.DoubleValue.t() | nil,
          optimization_score_url: Google.Protobuf.StringValue.t() | nil,
          organic_clicks: Google.Protobuf.Int64Value.t() | nil,
          organic_clicks_per_query: Google.Protobuf.DoubleValue.t() | nil,
          organic_impressions: Google.Protobuf.Int64Value.t() | nil,
          organic_impressions_per_query: Google.Protobuf.DoubleValue.t() | nil,
          organic_queries: Google.Protobuf.Int64Value.t() | nil,
          percent_new_visitors: Google.Protobuf.DoubleValue.t() | nil,
          phone_calls: Google.Protobuf.Int64Value.t() | nil,
          phone_impressions: Google.Protobuf.Int64Value.t() | nil,
          phone_through_rate: Google.Protobuf.DoubleValue.t() | nil,
          relative_ctr: Google.Protobuf.DoubleValue.t() | nil,
          search_absolute_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_budget_lost_absolute_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_budget_lost_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_budget_lost_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_click_share: Google.Protobuf.DoubleValue.t() | nil,
          search_exact_match_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_rank_lost_absolute_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_rank_lost_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_rank_lost_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          search_top_impression_share: Google.Protobuf.DoubleValue.t() | nil,
          speed_score: Google.Protobuf.Int64Value.t() | nil,
          top_impression_percentage: Google.Protobuf.DoubleValue.t() | nil,
          valid_accelerated_mobile_pages_clicks_percentage: Google.Protobuf.DoubleValue.t() | nil,
          value_per_all_conversions: Google.Protobuf.DoubleValue.t() | nil,
          value_per_all_conversions_by_conversion_date: Google.Protobuf.DoubleValue.t() | nil,
          value_per_conversion: Google.Protobuf.DoubleValue.t() | nil,
          value_per_conversions_by_conversion_date: Google.Protobuf.DoubleValue.t() | nil,
          value_per_current_model_attributed_conversion: Google.Protobuf.DoubleValue.t() | nil,
          video_quartile_p100_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_quartile_p25_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_quartile_p50_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_quartile_p75_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_view_rate: Google.Protobuf.DoubleValue.t() | nil,
          video_views: Google.Protobuf.Int64Value.t() | nil,
          view_through_conversions: Google.Protobuf.Int64Value.t() | nil,
          sk_ad_network_conversions: integer
        }

  defstruct [
    :absolute_top_impression_percentage,
    :active_view_cpm,
    :active_view_ctr,
    :active_view_impressions,
    :active_view_measurability,
    :active_view_measurable_cost_micros,
    :active_view_measurable_impressions,
    :active_view_viewability,
    :all_conversions_from_interactions_rate,
    :all_conversions_value,
    :all_conversions_value_by_conversion_date,
    :all_conversions,
    :all_conversions_by_conversion_date,
    :all_conversions_value_per_cost,
    :all_conversions_from_click_to_call,
    :all_conversions_from_directions,
    :all_conversions_from_interactions_value_per_interaction,
    :all_conversions_from_menu,
    :all_conversions_from_order,
    :all_conversions_from_other_engagement,
    :all_conversions_from_store_visit,
    :all_conversions_from_store_website,
    :average_cost,
    :average_cpc,
    :average_cpe,
    :average_cpm,
    :average_cpv,
    :average_page_views,
    :average_time_on_site,
    :benchmark_average_max_cpc,
    :benchmark_ctr,
    :bounce_rate,
    :clicks,
    :combined_clicks,
    :combined_clicks_per_query,
    :combined_queries,
    :content_budget_lost_impression_share,
    :content_impression_share,
    :conversion_last_received_request_date_time,
    :conversion_last_conversion_date,
    :content_rank_lost_impression_share,
    :conversions_from_interactions_rate,
    :conversions_value,
    :conversions_value_by_conversion_date,
    :conversions_value_per_cost,
    :conversions_from_interactions_value_per_interaction,
    :conversions,
    :conversions_by_conversion_date,
    :cost_micros,
    :cost_per_all_conversions,
    :cost_per_conversion,
    :cost_per_current_model_attributed_conversion,
    :cross_device_conversions,
    :ctr,
    :current_model_attributed_conversions,
    :current_model_attributed_conversions_from_interactions_rate,
    :current_model_attributed_conversions_from_interactions_value_per_interaction,
    :current_model_attributed_conversions_value,
    :current_model_attributed_conversions_value_per_cost,
    :engagement_rate,
    :engagements,
    :hotel_average_lead_value_micros,
    :hotel_price_difference_percentage,
    :hotel_eligible_impressions,
    :historical_creative_quality_score,
    :historical_landing_page_quality_score,
    :historical_quality_score,
    :historical_search_predicted_ctr,
    :gmail_forwards,
    :gmail_saves,
    :gmail_secondary_clicks,
    :impressions_from_store_reach,
    :impressions,
    :interaction_rate,
    :interactions,
    :interaction_event_types,
    :invalid_click_rate,
    :invalid_clicks,
    :message_chats,
    :message_impressions,
    :message_chat_rate,
    :mobile_friendly_clicks_percentage,
    :optimization_score_uplift,
    :optimization_score_url,
    :organic_clicks,
    :organic_clicks_per_query,
    :organic_impressions,
    :organic_impressions_per_query,
    :organic_queries,
    :percent_new_visitors,
    :phone_calls,
    :phone_impressions,
    :phone_through_rate,
    :relative_ctr,
    :search_absolute_top_impression_share,
    :search_budget_lost_absolute_top_impression_share,
    :search_budget_lost_impression_share,
    :search_budget_lost_top_impression_share,
    :search_click_share,
    :search_exact_match_impression_share,
    :search_impression_share,
    :search_rank_lost_absolute_top_impression_share,
    :search_rank_lost_impression_share,
    :search_rank_lost_top_impression_share,
    :search_top_impression_share,
    :speed_score,
    :top_impression_percentage,
    :valid_accelerated_mobile_pages_clicks_percentage,
    :value_per_all_conversions,
    :value_per_all_conversions_by_conversion_date,
    :value_per_conversion,
    :value_per_conversions_by_conversion_date,
    :value_per_current_model_attributed_conversion,
    :video_quartile_p100_rate,
    :video_quartile_p25_rate,
    :video_quartile_p50_rate,
    :video_quartile_p75_rate,
    :video_view_rate,
    :video_views,
    :view_through_conversions,
    :sk_ad_network_conversions
  ]

  field :absolute_top_impression_percentage, 183, type: Google.Protobuf.DoubleValue
  field :active_view_cpm, 184, type: Google.Protobuf.DoubleValue
  field :active_view_ctr, 185, type: Google.Protobuf.DoubleValue
  field :active_view_impressions, 186, type: Google.Protobuf.Int64Value
  field :active_view_measurability, 187, type: Google.Protobuf.DoubleValue
  field :active_view_measurable_cost_micros, 188, type: Google.Protobuf.Int64Value
  field :active_view_measurable_impressions, 189, type: Google.Protobuf.Int64Value
  field :active_view_viewability, 190, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_interactions_rate, 191, type: Google.Protobuf.DoubleValue
  field :all_conversions_value, 192, type: Google.Protobuf.DoubleValue
  field :all_conversions_value_by_conversion_date, 240, type: :double
  field :all_conversions, 193, type: Google.Protobuf.DoubleValue
  field :all_conversions_by_conversion_date, 241, type: :double
  field :all_conversions_value_per_cost, 194, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_click_to_call, 195, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_directions, 196, type: Google.Protobuf.DoubleValue

  field :all_conversions_from_interactions_value_per_interaction, 197,
    type: Google.Protobuf.DoubleValue

  field :all_conversions_from_menu, 198, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_order, 199, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_other_engagement, 200, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_store_visit, 201, type: Google.Protobuf.DoubleValue
  field :all_conversions_from_store_website, 202, type: Google.Protobuf.DoubleValue
  field :average_cost, 203, type: Google.Protobuf.DoubleValue
  field :average_cpc, 204, type: Google.Protobuf.DoubleValue
  field :average_cpe, 205, type: Google.Protobuf.DoubleValue
  field :average_cpm, 206, type: Google.Protobuf.DoubleValue
  field :average_cpv, 207, type: Google.Protobuf.DoubleValue
  field :average_page_views, 208, type: Google.Protobuf.DoubleValue
  field :average_time_on_site, 209, type: Google.Protobuf.DoubleValue
  field :benchmark_average_max_cpc, 210, type: Google.Protobuf.DoubleValue
  field :benchmark_ctr, 211, type: Google.Protobuf.DoubleValue
  field :bounce_rate, 212, type: Google.Protobuf.DoubleValue
  field :clicks, 131, type: Google.Protobuf.Int64Value
  field :combined_clicks, 156, type: Google.Protobuf.Int64Value
  field :combined_clicks_per_query, 157, type: Google.Protobuf.DoubleValue
  field :combined_queries, 158, type: Google.Protobuf.Int64Value
  field :content_budget_lost_impression_share, 159, type: Google.Protobuf.DoubleValue
  field :content_impression_share, 160, type: Google.Protobuf.DoubleValue
  field :conversion_last_received_request_date_time, 161, type: Google.Protobuf.StringValue
  field :conversion_last_conversion_date, 162, type: Google.Protobuf.StringValue
  field :content_rank_lost_impression_share, 163, type: Google.Protobuf.DoubleValue
  field :conversions_from_interactions_rate, 164, type: Google.Protobuf.DoubleValue
  field :conversions_value, 165, type: Google.Protobuf.DoubleValue
  field :conversions_value_by_conversion_date, 242, type: :double
  field :conversions_value_per_cost, 166, type: Google.Protobuf.DoubleValue

  field :conversions_from_interactions_value_per_interaction, 167,
    type: Google.Protobuf.DoubleValue

  field :conversions, 168, type: Google.Protobuf.DoubleValue
  field :conversions_by_conversion_date, 243, type: :double
  field :cost_micros, 169, type: Google.Protobuf.Int64Value
  field :cost_per_all_conversions, 170, type: Google.Protobuf.DoubleValue
  field :cost_per_conversion, 171, type: Google.Protobuf.DoubleValue
  field :cost_per_current_model_attributed_conversion, 172, type: Google.Protobuf.DoubleValue
  field :cross_device_conversions, 173, type: Google.Protobuf.DoubleValue
  field :ctr, 174, type: Google.Protobuf.DoubleValue
  field :current_model_attributed_conversions, 175, type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_from_interactions_rate, 176,
    type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_from_interactions_value_per_interaction, 177,
    type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_value, 178, type: Google.Protobuf.DoubleValue

  field :current_model_attributed_conversions_value_per_cost, 179,
    type: Google.Protobuf.DoubleValue

  field :engagement_rate, 180, type: Google.Protobuf.DoubleValue
  field :engagements, 181, type: Google.Protobuf.Int64Value
  field :hotel_average_lead_value_micros, 213, type: Google.Protobuf.DoubleValue
  field :hotel_price_difference_percentage, 214, type: Google.Protobuf.DoubleValue
  field :hotel_eligible_impressions, 215, type: Google.Protobuf.Int64Value

  field :historical_creative_quality_score, 80,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_landing_page_quality_score, 81,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :historical_quality_score, 216, type: Google.Protobuf.Int64Value

  field :historical_search_predicted_ctr, 83,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :gmail_forwards, 217, type: Google.Protobuf.Int64Value
  field :gmail_saves, 218, type: Google.Protobuf.Int64Value
  field :gmail_secondary_clicks, 219, type: Google.Protobuf.Int64Value
  field :impressions_from_store_reach, 220, type: Google.Protobuf.Int64Value
  field :impressions, 221, type: Google.Protobuf.Int64Value
  field :interaction_rate, 222, type: Google.Protobuf.DoubleValue
  field :interactions, 223, type: Google.Protobuf.Int64Value

  field :interaction_event_types, 100,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.InteractionEventTypeEnum.InteractionEventType,
    enum: true

  field :invalid_click_rate, 224, type: Google.Protobuf.DoubleValue
  field :invalid_clicks, 225, type: Google.Protobuf.Int64Value
  field :message_chats, 226, type: Google.Protobuf.Int64Value
  field :message_impressions, 227, type: Google.Protobuf.Int64Value
  field :message_chat_rate, 228, type: Google.Protobuf.DoubleValue
  field :mobile_friendly_clicks_percentage, 229, type: Google.Protobuf.DoubleValue
  field :optimization_score_uplift, 247, type: Google.Protobuf.DoubleValue
  field :optimization_score_url, 248, type: Google.Protobuf.StringValue
  field :organic_clicks, 230, type: Google.Protobuf.Int64Value
  field :organic_clicks_per_query, 231, type: Google.Protobuf.DoubleValue
  field :organic_impressions, 232, type: Google.Protobuf.Int64Value
  field :organic_impressions_per_query, 233, type: Google.Protobuf.DoubleValue
  field :organic_queries, 234, type: Google.Protobuf.Int64Value
  field :percent_new_visitors, 235, type: Google.Protobuf.DoubleValue
  field :phone_calls, 236, type: Google.Protobuf.Int64Value
  field :phone_impressions, 237, type: Google.Protobuf.Int64Value
  field :phone_through_rate, 238, type: Google.Protobuf.DoubleValue
  field :relative_ctr, 239, type: Google.Protobuf.DoubleValue
  field :search_absolute_top_impression_share, 136, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_absolute_top_impression_share, 137, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_impression_share, 138, type: Google.Protobuf.DoubleValue
  field :search_budget_lost_top_impression_share, 139, type: Google.Protobuf.DoubleValue
  field :search_click_share, 140, type: Google.Protobuf.DoubleValue
  field :search_exact_match_impression_share, 141, type: Google.Protobuf.DoubleValue
  field :search_impression_share, 142, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_absolute_top_impression_share, 143, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_impression_share, 144, type: Google.Protobuf.DoubleValue
  field :search_rank_lost_top_impression_share, 145, type: Google.Protobuf.DoubleValue
  field :search_top_impression_share, 146, type: Google.Protobuf.DoubleValue
  field :speed_score, 147, type: Google.Protobuf.Int64Value
  field :top_impression_percentage, 148, type: Google.Protobuf.DoubleValue
  field :valid_accelerated_mobile_pages_clicks_percentage, 149, type: Google.Protobuf.DoubleValue
  field :value_per_all_conversions, 150, type: Google.Protobuf.DoubleValue
  field :value_per_all_conversions_by_conversion_date, 244, type: Google.Protobuf.DoubleValue
  field :value_per_conversion, 151, type: Google.Protobuf.DoubleValue
  field :value_per_conversions_by_conversion_date, 245, type: Google.Protobuf.DoubleValue
  field :value_per_current_model_attributed_conversion, 152, type: Google.Protobuf.DoubleValue
  field :video_quartile_p100_rate, 132, type: Google.Protobuf.DoubleValue
  field :video_quartile_p25_rate, 133, type: Google.Protobuf.DoubleValue
  field :video_quartile_p50_rate, 134, type: Google.Protobuf.DoubleValue
  field :video_quartile_p75_rate, 135, type: Google.Protobuf.DoubleValue
  field :video_view_rate, 153, type: Google.Protobuf.DoubleValue
  field :video_views, 154, type: Google.Protobuf.Int64Value
  field :view_through_conversions, 155, type: Google.Protobuf.Int64Value
  field :sk_ad_network_conversions, 246, type: :int64
end
