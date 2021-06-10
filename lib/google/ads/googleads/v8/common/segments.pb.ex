defmodule Google.Ads.Googleads.V8.Common.Segments do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_destination_type:
            Google.Ads.Googleads.V8.Enums.AdDestinationTypeEnum.AdDestinationType.t(),
          ad_network_type: Google.Ads.Googleads.V8.Enums.AdNetworkTypeEnum.AdNetworkType.t(),
          budget_campaign_association_status:
            Google.Ads.Googleads.V8.Common.BudgetCampaignAssociationStatus.t() | nil,
          click_type: Google.Ads.Googleads.V8.Enums.ClickTypeEnum.ClickType.t(),
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          conversion_action_category:
            Google.Ads.Googleads.V8.Enums.ConversionActionCategoryEnum.ConversionActionCategory.t(),
          conversion_action_name: Google.Protobuf.StringValue.t() | nil,
          conversion_adjustment: Google.Protobuf.BoolValue.t() | nil,
          conversion_attribution_event_type:
            Google.Ads.Googleads.V8.Enums.ConversionAttributionEventTypeEnum.ConversionAttributionEventType.t(),
          conversion_lag_bucket:
            Google.Ads.Googleads.V8.Enums.ConversionLagBucketEnum.ConversionLagBucket.t(),
          conversion_or_adjustment_lag_bucket:
            Google.Ads.Googleads.V8.Enums.ConversionOrAdjustmentLagBucketEnum.ConversionOrAdjustmentLagBucket.t(),
          date: Google.Protobuf.StringValue.t() | nil,
          day_of_week: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek.t(),
          device: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device.t(),
          external_conversion_source:
            Google.Ads.Googleads.V8.Enums.ExternalConversionSourceEnum.ExternalConversionSource.t(),
          geo_target_airport: Google.Protobuf.StringValue.t() | nil,
          geo_target_canton: Google.Protobuf.StringValue.t() | nil,
          geo_target_city: Google.Protobuf.StringValue.t() | nil,
          geo_target_country: Google.Protobuf.StringValue.t() | nil,
          geo_target_county: Google.Protobuf.StringValue.t() | nil,
          geo_target_district: Google.Protobuf.StringValue.t() | nil,
          geo_target_metro: Google.Protobuf.StringValue.t() | nil,
          geo_target_most_specific_location: Google.Protobuf.StringValue.t() | nil,
          geo_target_postal_code: Google.Protobuf.StringValue.t() | nil,
          geo_target_province: Google.Protobuf.StringValue.t() | nil,
          geo_target_region: Google.Protobuf.StringValue.t() | nil,
          geo_target_state: Google.Protobuf.StringValue.t() | nil,
          hotel_booking_window_days: Google.Protobuf.Int64Value.t() | nil,
          hotel_center_id: Google.Protobuf.Int64Value.t() | nil,
          hotel_check_in_date: Google.Protobuf.StringValue.t() | nil,
          hotel_check_in_day_of_week: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek.t(),
          hotel_city: Google.Protobuf.StringValue.t() | nil,
          hotel_class: Google.Protobuf.Int32Value.t() | nil,
          hotel_country: Google.Protobuf.StringValue.t() | nil,
          hotel_date_selection_type:
            Google.Ads.Googleads.V8.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType.t(),
          hotel_length_of_stay: Google.Protobuf.Int32Value.t() | nil,
          hotel_rate_rule_id: Google.Protobuf.StringValue.t() | nil,
          hotel_rate_type: Google.Ads.Googleads.V8.Enums.HotelRateTypeEnum.HotelRateType.t(),
          hotel_price_bucket:
            Google.Ads.Googleads.V8.Enums.HotelPriceBucketEnum.HotelPriceBucket.t(),
          hotel_state: Google.Protobuf.StringValue.t() | nil,
          hour: Google.Protobuf.Int32Value.t() | nil,
          interaction_on_this_extension: Google.Protobuf.BoolValue.t() | nil,
          keyword: Google.Ads.Googleads.V8.Common.Keyword.t() | nil,
          month: Google.Protobuf.StringValue.t() | nil,
          month_of_year: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear.t(),
          partner_hotel_id: Google.Protobuf.StringValue.t() | nil,
          placeholder_type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType.t(),
          product_aggregator_id: Google.Protobuf.Int64Value.t() | nil,
          product_bidding_category_level1: Google.Protobuf.StringValue.t() | nil,
          product_bidding_category_level2: Google.Protobuf.StringValue.t() | nil,
          product_bidding_category_level3: Google.Protobuf.StringValue.t() | nil,
          product_bidding_category_level4: Google.Protobuf.StringValue.t() | nil,
          product_bidding_category_level5: Google.Protobuf.StringValue.t() | nil,
          product_brand: Google.Protobuf.StringValue.t() | nil,
          product_channel: Google.Ads.Googleads.V8.Enums.ProductChannelEnum.ProductChannel.t(),
          product_channel_exclusivity:
            Google.Ads.Googleads.V8.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity.t(),
          product_condition:
            Google.Ads.Googleads.V8.Enums.ProductConditionEnum.ProductCondition.t(),
          product_country: Google.Protobuf.StringValue.t() | nil,
          product_custom_attribute0: Google.Protobuf.StringValue.t() | nil,
          product_custom_attribute1: Google.Protobuf.StringValue.t() | nil,
          product_custom_attribute2: Google.Protobuf.StringValue.t() | nil,
          product_custom_attribute3: Google.Protobuf.StringValue.t() | nil,
          product_custom_attribute4: Google.Protobuf.StringValue.t() | nil,
          product_item_id: Google.Protobuf.StringValue.t() | nil,
          product_language: Google.Protobuf.StringValue.t() | nil,
          product_merchant_id: Google.Protobuf.Int64Value.t() | nil,
          product_store_id: Google.Protobuf.StringValue.t() | nil,
          product_title: Google.Protobuf.StringValue.t() | nil,
          product_type_l1: Google.Protobuf.StringValue.t() | nil,
          product_type_l2: Google.Protobuf.StringValue.t() | nil,
          product_type_l3: Google.Protobuf.StringValue.t() | nil,
          product_type_l4: Google.Protobuf.StringValue.t() | nil,
          product_type_l5: Google.Protobuf.StringValue.t() | nil,
          quarter: Google.Protobuf.StringValue.t() | nil,
          recommendation_type:
            Google.Ads.Googleads.V8.Enums.RecommendationTypeEnum.RecommendationType.t(),
          search_engine_results_page_type:
            Google.Ads.Googleads.V8.Enums.SearchEngineResultsPageTypeEnum.SearchEngineResultsPageType.t(),
          search_term_match_type:
            Google.Ads.Googleads.V8.Enums.SearchTermMatchTypeEnum.SearchTermMatchType.t(),
          slot: Google.Ads.Googleads.V8.Enums.SlotEnum.Slot.t(),
          webpage: Google.Protobuf.StringValue.t() | nil,
          week: Google.Protobuf.StringValue.t() | nil,
          year: Google.Protobuf.Int32Value.t() | nil,
          sk_ad_network_conversion_value: Google.Protobuf.Int64Value.t() | nil,
          asset_interaction_target:
            Google.Ads.Googleads.V8.Common.AssetInteractionTarget.t() | nil
        }

  defstruct [
    :ad_destination_type,
    :ad_network_type,
    :budget_campaign_association_status,
    :click_type,
    :conversion_action,
    :conversion_action_category,
    :conversion_action_name,
    :conversion_adjustment,
    :conversion_attribution_event_type,
    :conversion_lag_bucket,
    :conversion_or_adjustment_lag_bucket,
    :date,
    :day_of_week,
    :device,
    :external_conversion_source,
    :geo_target_airport,
    :geo_target_canton,
    :geo_target_city,
    :geo_target_country,
    :geo_target_county,
    :geo_target_district,
    :geo_target_metro,
    :geo_target_most_specific_location,
    :geo_target_postal_code,
    :geo_target_province,
    :geo_target_region,
    :geo_target_state,
    :hotel_booking_window_days,
    :hotel_center_id,
    :hotel_check_in_date,
    :hotel_check_in_day_of_week,
    :hotel_city,
    :hotel_class,
    :hotel_country,
    :hotel_date_selection_type,
    :hotel_length_of_stay,
    :hotel_rate_rule_id,
    :hotel_rate_type,
    :hotel_price_bucket,
    :hotel_state,
    :hour,
    :interaction_on_this_extension,
    :keyword,
    :month,
    :month_of_year,
    :partner_hotel_id,
    :placeholder_type,
    :product_aggregator_id,
    :product_bidding_category_level1,
    :product_bidding_category_level2,
    :product_bidding_category_level3,
    :product_bidding_category_level4,
    :product_bidding_category_level5,
    :product_brand,
    :product_channel,
    :product_channel_exclusivity,
    :product_condition,
    :product_country,
    :product_custom_attribute0,
    :product_custom_attribute1,
    :product_custom_attribute2,
    :product_custom_attribute3,
    :product_custom_attribute4,
    :product_item_id,
    :product_language,
    :product_merchant_id,
    :product_store_id,
    :product_title,
    :product_type_l1,
    :product_type_l2,
    :product_type_l3,
    :product_type_l4,
    :product_type_l5,
    :quarter,
    :recommendation_type,
    :search_engine_results_page_type,
    :search_term_match_type,
    :slot,
    :webpage,
    :week,
    :year,
    :sk_ad_network_conversion_value,
    :asset_interaction_target
  ]

  field :ad_destination_type, 136,
    type: Google.Ads.Googleads.V8.Enums.AdDestinationTypeEnum.AdDestinationType,
    enum: true

  field :ad_network_type, 3,
    type: Google.Ads.Googleads.V8.Enums.AdNetworkTypeEnum.AdNetworkType,
    enum: true

  field :budget_campaign_association_status, 134,
    type: Google.Ads.Googleads.V8.Common.BudgetCampaignAssociationStatus

  field :click_type, 26, type: Google.Ads.Googleads.V8.Enums.ClickTypeEnum.ClickType, enum: true
  field :conversion_action, 113, type: Google.Protobuf.StringValue

  field :conversion_action_category, 53,
    type: Google.Ads.Googleads.V8.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :conversion_action_name, 114, type: Google.Protobuf.StringValue
  field :conversion_adjustment, 115, type: Google.Protobuf.BoolValue

  field :conversion_attribution_event_type, 2,
    type:
      Google.Ads.Googleads.V8.Enums.ConversionAttributionEventTypeEnum.ConversionAttributionEventType,
    enum: true

  field :conversion_lag_bucket, 50,
    type: Google.Ads.Googleads.V8.Enums.ConversionLagBucketEnum.ConversionLagBucket,
    enum: true

  field :conversion_or_adjustment_lag_bucket, 51,
    type:
      Google.Ads.Googleads.V8.Enums.ConversionOrAdjustmentLagBucketEnum.ConversionOrAdjustmentLagBucket,
    enum: true

  field :date, 79, type: Google.Protobuf.StringValue
  field :day_of_week, 5, type: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek, enum: true
  field :device, 1, type: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device, enum: true

  field :external_conversion_source, 55,
    type: Google.Ads.Googleads.V8.Enums.ExternalConversionSourceEnum.ExternalConversionSource,
    enum: true

  field :geo_target_airport, 116, type: Google.Protobuf.StringValue
  field :geo_target_canton, 117, type: Google.Protobuf.StringValue
  field :geo_target_city, 118, type: Google.Protobuf.StringValue
  field :geo_target_country, 119, type: Google.Protobuf.StringValue
  field :geo_target_county, 120, type: Google.Protobuf.StringValue
  field :geo_target_district, 121, type: Google.Protobuf.StringValue
  field :geo_target_metro, 122, type: Google.Protobuf.StringValue
  field :geo_target_most_specific_location, 123, type: Google.Protobuf.StringValue
  field :geo_target_postal_code, 124, type: Google.Protobuf.StringValue
  field :geo_target_province, 125, type: Google.Protobuf.StringValue
  field :geo_target_region, 126, type: Google.Protobuf.StringValue
  field :geo_target_state, 127, type: Google.Protobuf.StringValue
  field :hotel_booking_window_days, 135, type: Google.Protobuf.Int64Value
  field :hotel_center_id, 80, type: Google.Protobuf.Int64Value
  field :hotel_check_in_date, 81, type: Google.Protobuf.StringValue

  field :hotel_check_in_day_of_week, 9,
    type: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek,
    enum: true

  field :hotel_city, 82, type: Google.Protobuf.StringValue
  field :hotel_class, 83, type: Google.Protobuf.Int32Value
  field :hotel_country, 84, type: Google.Protobuf.StringValue

  field :hotel_date_selection_type, 13,
    type: Google.Ads.Googleads.V8.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    enum: true

  field :hotel_length_of_stay, 85, type: Google.Protobuf.Int32Value
  field :hotel_rate_rule_id, 86, type: Google.Protobuf.StringValue

  field :hotel_rate_type, 74,
    type: Google.Ads.Googleads.V8.Enums.HotelRateTypeEnum.HotelRateType,
    enum: true

  field :hotel_price_bucket, 78,
    type: Google.Ads.Googleads.V8.Enums.HotelPriceBucketEnum.HotelPriceBucket,
    enum: true

  field :hotel_state, 87, type: Google.Protobuf.StringValue
  field :hour, 88, type: Google.Protobuf.Int32Value
  field :interaction_on_this_extension, 89, type: Google.Protobuf.BoolValue
  field :keyword, 61, type: Google.Ads.Googleads.V8.Common.Keyword
  field :month, 90, type: Google.Protobuf.StringValue

  field :month_of_year, 18,
    type: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true

  field :partner_hotel_id, 91, type: Google.Protobuf.StringValue

  field :placeholder_type, 20,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :product_aggregator_id, 132, type: Google.Protobuf.Int64Value
  field :product_bidding_category_level1, 92, type: Google.Protobuf.StringValue
  field :product_bidding_category_level2, 93, type: Google.Protobuf.StringValue
  field :product_bidding_category_level3, 94, type: Google.Protobuf.StringValue
  field :product_bidding_category_level4, 95, type: Google.Protobuf.StringValue
  field :product_bidding_category_level5, 96, type: Google.Protobuf.StringValue
  field :product_brand, 97, type: Google.Protobuf.StringValue

  field :product_channel, 30,
    type: Google.Ads.Googleads.V8.Enums.ProductChannelEnum.ProductChannel,
    enum: true

  field :product_channel_exclusivity, 31,
    type: Google.Ads.Googleads.V8.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    enum: true

  field :product_condition, 32,
    type: Google.Ads.Googleads.V8.Enums.ProductConditionEnum.ProductCondition,
    enum: true

  field :product_country, 98, type: Google.Protobuf.StringValue
  field :product_custom_attribute0, 99, type: Google.Protobuf.StringValue
  field :product_custom_attribute1, 100, type: Google.Protobuf.StringValue
  field :product_custom_attribute2, 101, type: Google.Protobuf.StringValue
  field :product_custom_attribute3, 102, type: Google.Protobuf.StringValue
  field :product_custom_attribute4, 103, type: Google.Protobuf.StringValue
  field :product_item_id, 104, type: Google.Protobuf.StringValue
  field :product_language, 105, type: Google.Protobuf.StringValue
  field :product_merchant_id, 133, type: Google.Protobuf.Int64Value
  field :product_store_id, 106, type: Google.Protobuf.StringValue
  field :product_title, 107, type: Google.Protobuf.StringValue
  field :product_type_l1, 108, type: Google.Protobuf.StringValue
  field :product_type_l2, 109, type: Google.Protobuf.StringValue
  field :product_type_l3, 110, type: Google.Protobuf.StringValue
  field :product_type_l4, 111, type: Google.Protobuf.StringValue
  field :product_type_l5, 112, type: Google.Protobuf.StringValue
  field :quarter, 128, type: Google.Protobuf.StringValue

  field :recommendation_type, 140,
    type: Google.Ads.Googleads.V8.Enums.RecommendationTypeEnum.RecommendationType,
    enum: true

  field :search_engine_results_page_type, 70,
    type:
      Google.Ads.Googleads.V8.Enums.SearchEngineResultsPageTypeEnum.SearchEngineResultsPageType,
    enum: true

  field :search_term_match_type, 22,
    type: Google.Ads.Googleads.V8.Enums.SearchTermMatchTypeEnum.SearchTermMatchType,
    enum: true

  field :slot, 23, type: Google.Ads.Googleads.V8.Enums.SlotEnum.Slot, enum: true
  field :webpage, 129, type: Google.Protobuf.StringValue
  field :week, 130, type: Google.Protobuf.StringValue
  field :year, 131, type: Google.Protobuf.Int32Value
  field :sk_ad_network_conversion_value, 137, type: Google.Protobuf.Int64Value

  field :asset_interaction_target, 139,
    type: Google.Ads.Googleads.V8.Common.AssetInteractionTarget
end

defmodule Google.Ads.Googleads.V8.Common.Keyword do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_group_criterion: Google.Protobuf.StringValue.t() | nil,
          info: Google.Ads.Googleads.V8.Common.KeywordInfo.t() | nil
        }

  defstruct [:ad_group_criterion, :info]

  field :ad_group_criterion, 3, type: Google.Protobuf.StringValue
  field :info, 2, type: Google.Ads.Googleads.V8.Common.KeywordInfo
end

defmodule Google.Ads.Googleads.V8.Common.BudgetCampaignAssociationStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V8.Enums.BudgetCampaignAssociationStatusEnum.BudgetCampaignAssociationStatus.t()
        }

  defstruct [:campaign, :status]

  field :campaign, 1, type: Google.Protobuf.StringValue

  field :status, 2,
    type:
      Google.Ads.Googleads.V8.Enums.BudgetCampaignAssociationStatusEnum.BudgetCampaignAssociationStatus,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.AssetInteractionTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t(),
          interaction_on_this_asset: boolean
        }

  defstruct [:asset, :interaction_on_this_asset]

  field :asset, 1, type: :string
  field :interaction_on_this_asset, 2, type: :bool
end
