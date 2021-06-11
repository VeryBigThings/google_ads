defmodule Google.Ads.Googleads.V8.Common.Segments do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          ad_destination_type:
            Google.Ads.Googleads.V8.Enums.AdDestinationTypeEnum.AdDestinationType.t(),
          ad_network_type: Google.Ads.Googleads.V8.Enums.AdNetworkTypeEnum.AdNetworkType.t(),
          budget_campaign_association_status:
            Google.Ads.Googleads.V8.Common.BudgetCampaignAssociationStatus.t() | nil,
          click_type: Google.Ads.Googleads.V8.Enums.ClickTypeEnum.ClickType.t(),
          conversion_action: String.t(),
          conversion_action_category:
            Google.Ads.Googleads.V8.Enums.ConversionActionCategoryEnum.ConversionActionCategory.t(),
          conversion_action_name: String.t(),
          conversion_adjustment: boolean,
          conversion_attribution_event_type:
            Google.Ads.Googleads.V8.Enums.ConversionAttributionEventTypeEnum.ConversionAttributionEventType.t(),
          conversion_lag_bucket:
            Google.Ads.Googleads.V8.Enums.ConversionLagBucketEnum.ConversionLagBucket.t(),
          conversion_or_adjustment_lag_bucket:
            Google.Ads.Googleads.V8.Enums.ConversionOrAdjustmentLagBucketEnum.ConversionOrAdjustmentLagBucket.t(),
          date: String.t(),
          day_of_week: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek.t(),
          device: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device.t(),
          external_conversion_source:
            Google.Ads.Googleads.V8.Enums.ExternalConversionSourceEnum.ExternalConversionSource.t(),
          geo_target_airport: String.t(),
          geo_target_canton: String.t(),
          geo_target_city: String.t(),
          geo_target_country: String.t(),
          geo_target_county: String.t(),
          geo_target_district: String.t(),
          geo_target_metro: String.t(),
          geo_target_most_specific_location: String.t(),
          geo_target_postal_code: String.t(),
          geo_target_province: String.t(),
          geo_target_region: String.t(),
          geo_target_state: String.t(),
          hotel_booking_window_days: integer,
          hotel_center_id: integer,
          hotel_check_in_date: String.t(),
          hotel_check_in_day_of_week: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek.t(),
          hotel_city: String.t(),
          hotel_class: integer,
          hotel_country: String.t(),
          hotel_date_selection_type:
            Google.Ads.Googleads.V8.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType.t(),
          hotel_length_of_stay: integer,
          hotel_rate_rule_id: String.t(),
          hotel_rate_type: Google.Ads.Googleads.V8.Enums.HotelRateTypeEnum.HotelRateType.t(),
          hotel_price_bucket:
            Google.Ads.Googleads.V8.Enums.HotelPriceBucketEnum.HotelPriceBucket.t(),
          hotel_state: String.t(),
          hour: integer,
          interaction_on_this_extension: boolean,
          keyword: Google.Ads.Googleads.V8.Common.Keyword.t() | nil,
          month: String.t(),
          month_of_year: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear.t(),
          partner_hotel_id: String.t(),
          placeholder_type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType.t(),
          product_aggregator_id: integer,
          product_bidding_category_level1: String.t(),
          product_bidding_category_level2: String.t(),
          product_bidding_category_level3: String.t(),
          product_bidding_category_level4: String.t(),
          product_bidding_category_level5: String.t(),
          product_brand: String.t(),
          product_channel: Google.Ads.Googleads.V8.Enums.ProductChannelEnum.ProductChannel.t(),
          product_channel_exclusivity:
            Google.Ads.Googleads.V8.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity.t(),
          product_condition:
            Google.Ads.Googleads.V8.Enums.ProductConditionEnum.ProductCondition.t(),
          product_country: String.t(),
          product_custom_attribute0: String.t(),
          product_custom_attribute1: String.t(),
          product_custom_attribute2: String.t(),
          product_custom_attribute3: String.t(),
          product_custom_attribute4: String.t(),
          product_item_id: String.t(),
          product_language: String.t(),
          product_merchant_id: integer,
          product_store_id: String.t(),
          product_title: String.t(),
          product_type_l1: String.t(),
          product_type_l2: String.t(),
          product_type_l3: String.t(),
          product_type_l4: String.t(),
          product_type_l5: String.t(),
          quarter: String.t(),
          recommendation_type:
            Google.Ads.Googleads.V8.Enums.RecommendationTypeEnum.RecommendationType.t(),
          search_engine_results_page_type:
            Google.Ads.Googleads.V8.Enums.SearchEngineResultsPageTypeEnum.SearchEngineResultsPageType.t(),
          search_term_match_type:
            Google.Ads.Googleads.V8.Enums.SearchTermMatchTypeEnum.SearchTermMatchType.t(),
          slot: Google.Ads.Googleads.V8.Enums.SlotEnum.Slot.t(),
          webpage: String.t(),
          week: String.t(),
          year: integer,
          sk_ad_network_conversion_value: integer,
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
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdDestinationTypeEnum.AdDestinationType,
    enum: true

  field :ad_network_type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdNetworkTypeEnum.AdNetworkType,
    enum: true

  field :budget_campaign_association_status, 134,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.BudgetCampaignAssociationStatus

  field :click_type, 26,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ClickTypeEnum.ClickType,
    enum: true

  field :conversion_action, 113, optional: true, type: :string

  field :conversion_action_category, 53,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :conversion_action_name, 114, optional: true, type: :string
  field :conversion_adjustment, 115, optional: true, type: :bool

  field :conversion_attribution_event_type, 2,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.ConversionAttributionEventTypeEnum.ConversionAttributionEventType,
    enum: true

  field :conversion_lag_bucket, 50,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ConversionLagBucketEnum.ConversionLagBucket,
    enum: true

  field :conversion_or_adjustment_lag_bucket, 51,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.ConversionOrAdjustmentLagBucketEnum.ConversionOrAdjustmentLagBucket,
    enum: true

  field :date, 79, optional: true, type: :string

  field :day_of_week, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek,
    enum: true

  field :device, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device,
    enum: true

  field :external_conversion_source, 55,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ExternalConversionSourceEnum.ExternalConversionSource,
    enum: true

  field :geo_target_airport, 116, optional: true, type: :string
  field :geo_target_canton, 117, optional: true, type: :string
  field :geo_target_city, 118, optional: true, type: :string
  field :geo_target_country, 119, optional: true, type: :string
  field :geo_target_county, 120, optional: true, type: :string
  field :geo_target_district, 121, optional: true, type: :string
  field :geo_target_metro, 122, optional: true, type: :string
  field :geo_target_most_specific_location, 123, optional: true, type: :string
  field :geo_target_postal_code, 124, optional: true, type: :string
  field :geo_target_province, 125, optional: true, type: :string
  field :geo_target_region, 126, optional: true, type: :string
  field :geo_target_state, 127, optional: true, type: :string
  field :hotel_booking_window_days, 135, optional: true, type: :int64
  field :hotel_center_id, 80, optional: true, type: :int64
  field :hotel_check_in_date, 81, optional: true, type: :string

  field :hotel_check_in_day_of_week, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DayOfWeekEnum.DayOfWeek,
    enum: true

  field :hotel_city, 82, optional: true, type: :string
  field :hotel_class, 83, optional: true, type: :int32
  field :hotel_country, 84, optional: true, type: :string

  field :hotel_date_selection_type, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    enum: true

  field :hotel_length_of_stay, 85, optional: true, type: :int32
  field :hotel_rate_rule_id, 86, optional: true, type: :string

  field :hotel_rate_type, 74,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.HotelRateTypeEnum.HotelRateType,
    enum: true

  field :hotel_price_bucket, 78,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.HotelPriceBucketEnum.HotelPriceBucket,
    enum: true

  field :hotel_state, 87, optional: true, type: :string
  field :hour, 88, optional: true, type: :int32
  field :interaction_on_this_extension, 89, optional: true, type: :bool
  field :keyword, 61, optional: true, type: Google.Ads.Googleads.V8.Common.Keyword
  field :month, 90, optional: true, type: :string

  field :month_of_year, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true

  field :partner_hotel_id, 91, optional: true, type: :string

  field :placeholder_type, 20,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :product_aggregator_id, 132, optional: true, type: :int64
  field :product_bidding_category_level1, 92, optional: true, type: :string
  field :product_bidding_category_level2, 93, optional: true, type: :string
  field :product_bidding_category_level3, 94, optional: true, type: :string
  field :product_bidding_category_level4, 95, optional: true, type: :string
  field :product_bidding_category_level5, 96, optional: true, type: :string
  field :product_brand, 97, optional: true, type: :string

  field :product_channel, 30,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ProductChannelEnum.ProductChannel,
    enum: true

  field :product_channel_exclusivity, 31,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    enum: true

  field :product_condition, 32,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ProductConditionEnum.ProductCondition,
    enum: true

  field :product_country, 98, optional: true, type: :string
  field :product_custom_attribute0, 99, optional: true, type: :string
  field :product_custom_attribute1, 100, optional: true, type: :string
  field :product_custom_attribute2, 101, optional: true, type: :string
  field :product_custom_attribute3, 102, optional: true, type: :string
  field :product_custom_attribute4, 103, optional: true, type: :string
  field :product_item_id, 104, optional: true, type: :string
  field :product_language, 105, optional: true, type: :string
  field :product_merchant_id, 133, optional: true, type: :int64
  field :product_store_id, 106, optional: true, type: :string
  field :product_title, 107, optional: true, type: :string
  field :product_type_l1, 108, optional: true, type: :string
  field :product_type_l2, 109, optional: true, type: :string
  field :product_type_l3, 110, optional: true, type: :string
  field :product_type_l4, 111, optional: true, type: :string
  field :product_type_l5, 112, optional: true, type: :string
  field :quarter, 128, optional: true, type: :string

  field :recommendation_type, 140,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.RecommendationTypeEnum.RecommendationType,
    enum: true

  field :search_engine_results_page_type, 70,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.SearchEngineResultsPageTypeEnum.SearchEngineResultsPageType,
    enum: true

  field :search_term_match_type, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SearchTermMatchTypeEnum.SearchTermMatchType,
    enum: true

  field :slot, 23, optional: true, type: Google.Ads.Googleads.V8.Enums.SlotEnum.Slot, enum: true
  field :webpage, 129, optional: true, type: :string
  field :week, 130, optional: true, type: :string
  field :year, 131, optional: true, type: :int32
  field :sk_ad_network_conversion_value, 137, optional: true, type: :int64

  field :asset_interaction_target, 139,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AssetInteractionTarget
end

defmodule Google.Ads.Googleads.V8.Common.Keyword do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          ad_group_criterion: String.t(),
          info: Google.Ads.Googleads.V8.Common.KeywordInfo.t() | nil
        }

  defstruct [:ad_group_criterion, :info]

  field :ad_group_criterion, 3, optional: true, type: :string
  field :info, 2, optional: true, type: Google.Ads.Googleads.V8.Common.KeywordInfo
end

defmodule Google.Ads.Googleads.V8.Common.BudgetCampaignAssociationStatus do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          campaign: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.BudgetCampaignAssociationStatusEnum.BudgetCampaignAssociationStatus.t()
        }

  defstruct [:campaign, :status]

  field :campaign, 1, optional: true, type: :string

  field :status, 2,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.BudgetCampaignAssociationStatusEnum.BudgetCampaignAssociationStatus,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.AssetInteractionTarget do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          asset: String.t(),
          interaction_on_this_asset: boolean
        }

  defstruct [:asset, :interaction_on_this_asset]

  field :asset, 1, optional: true, type: :string
  field :interaction_on_this_asset, 2, optional: true, type: :bool
end
