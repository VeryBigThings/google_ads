defmodule Google.Ads.Googleads.V8Availabilities.Common.Metrics do
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
          average_cost: float | :infinity | :negative_infinity | :nan,
          average_cpc: float | :infinity | :negative_infinity | :nan,
          average_cpe: float | :infinity | :negative_infinity | :nan,
          average_cpm: float | :infinity | :negative_infinity | :nan,
          average_cpv: float | :infinity | :negative_infinity | :nan,
          average_page_views: float | :infinity | :negative_infinity | :nan,
          average_time_on_site: float | :infinity | :negative_infinity | :nan,
          benchmark_average_max_cpc: float | :infinity | :negative_infinity | :nan,
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
          hotel_price_difference_percentage: float | :infinity | :negative_infinity | :nan,
          hotel_eligible_impressions: integer,
          historical_creative_quality_score:
            Google.Ads.Googleads.V8Availabilities.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          historical_landing_page_quality_score:
            Google.Ads.Googleads.V8Availabilities.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          historical_quality_score: integer,
          historical_search_predicted_ctr:
            Google.Ads.Googleads.V8Availabilities.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          gmail_forwards: integer,
          gmail_saves: integer,
          gmail_secondary_clicks: integer,
          impressions_from_store_reach: integer,
          impressions: integer,
          interaction_rate: float | :infinity | :negative_infinity | :nan,
          interactions: integer,
          interaction_event_types: [
            [Google.Ads.Googleads.V8Availabilities.Enums.InteractionEventTypeEnum.InteractionEventType.t()]
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
