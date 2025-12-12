defmodule Google.Ads.Googleads.V7.Common.Segments do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad_destination_type, 136,
    type: Google.Ads.Googleads.V7.Enums.AdDestinationTypeEnum.AdDestinationType,
    enum: true

  field :ad_network_type, 3,
    type: Google.Ads.Googleads.V7.Enums.AdNetworkTypeEnum.AdNetworkType,
    enum: true

  field :budget_campaign_association_status, 134,
    type: Google.Ads.Googleads.V7.Common.BudgetCampaignAssociationStatus

  field :click_type, 26, type: Google.Ads.Googleads.V7.Enums.ClickTypeEnum.ClickType, enum: true
  field :conversion_action, 113, type: :string

  field :conversion_action_category, 53,
    type: Google.Ads.Googleads.V7.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :conversion_action_name, 114, type: :string
  field :conversion_adjustment, 115, type: :bool

  field :conversion_attribution_event_type, 2,
    type:
      Google.Ads.Googleads.V7.Enums.ConversionAttributionEventTypeEnum.ConversionAttributionEventType,
    enum: true

  field :conversion_lag_bucket, 50,
    type: Google.Ads.Googleads.V7.Enums.ConversionLagBucketEnum.ConversionLagBucket,
    enum: true

  field :conversion_or_adjustment_lag_bucket, 51,
    type:
      Google.Ads.Googleads.V7.Enums.ConversionOrAdjustmentLagBucketEnum.ConversionOrAdjustmentLagBucket,
    enum: true

  field :date, 79, type: :string
  field :day_of_week, 5, type: Google.Ads.Googleads.V7.Enums.DayOfWeekEnum.DayOfWeek, enum: true
  field :device, 1, type: Google.Ads.Googleads.V7.Enums.DeviceEnum.Device, enum: true

  field :external_conversion_source, 55,
    type: Google.Ads.Googleads.V7.Enums.ExternalConversionSourceEnum.ExternalConversionSource,
    enum: true

  field :geo_target_airport, 116, type: :string
  field :geo_target_canton, 117, type: :string
  field :geo_target_city, 118, type: :string
  field :geo_target_country, 119, type: :string
  field :geo_target_county, 120, type: :string
  field :geo_target_district, 121, type: :string
  field :geo_target_metro, 122, type: :string
  field :geo_target_most_specific_location, 123, type: :string
  field :geo_target_postal_code, 124, type: :string
  field :geo_target_province, 125, type: :string
  field :geo_target_region, 126, type: :string
  field :geo_target_state, 127, type: :string
  field :hotel_booking_window_days, 135, type: :int64
  field :hotel_center_id, 80, type: :int64
  field :hotel_check_in_date, 81, type: :string

  field :hotel_check_in_day_of_week, 9,
    type: Google.Ads.Googleads.V7.Enums.DayOfWeekEnum.DayOfWeek,
    enum: true

  field :hotel_city, 82, type: :string
  field :hotel_class, 83, type: :int32
  field :hotel_country, 84, type: :string

  field :hotel_date_selection_type, 13,
    type: Google.Ads.Googleads.V7.Enums.HotelDateSelectionTypeEnum.HotelDateSelectionType,
    enum: true

  field :hotel_length_of_stay, 85, type: :int32
  field :hotel_rate_rule_id, 86, type: :string

  field :hotel_rate_type, 74,
    type: Google.Ads.Googleads.V7.Enums.HotelRateTypeEnum.HotelRateType,
    enum: true

  field :hotel_price_bucket, 78,
    type: Google.Ads.Googleads.V7.Enums.HotelPriceBucketEnum.HotelPriceBucket,
    enum: true

  field :hotel_state, 87, type: :string
  field :hour, 88, type: :int32
  field :interaction_on_this_extension, 89, type: :bool
  field :keyword, 61, type: Google.Ads.Googleads.V7.Common.Keyword
  field :month, 90, type: :string

  field :month_of_year, 18,
    type: Google.Ads.Googleads.V7.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true

  field :partner_hotel_id, 91, type: :string

  field :placeholder_type, 20,
    type: Google.Ads.Googleads.V7.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :product_aggregator_id, 132, type: :int64
  field :product_bidding_category_level1, 92, type: :string
  field :product_bidding_category_level2, 93, type: :string
  field :product_bidding_category_level3, 94, type: :string
  field :product_bidding_category_level4, 95, type: :string
  field :product_bidding_category_level5, 96, type: :string
  field :product_brand, 97, type: :string

  field :product_channel, 30,
    type: Google.Ads.Googleads.V7.Enums.ProductChannelEnum.ProductChannel,
    enum: true

  field :product_channel_exclusivity, 31,
    type: Google.Ads.Googleads.V7.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity,
    enum: true

  field :product_condition, 32,
    type: Google.Ads.Googleads.V7.Enums.ProductConditionEnum.ProductCondition,
    enum: true

  field :product_country, 98, type: :string
  field :product_custom_attribute0, 99, type: :string
  field :product_custom_attribute1, 100, type: :string
  field :product_custom_attribute2, 101, type: :string
  field :product_custom_attribute3, 102, type: :string
  field :product_custom_attribute4, 103, type: :string
  field :product_item_id, 104, type: :string
  field :product_language, 105, type: :string
  field :product_merchant_id, 133, type: :int64
  field :product_store_id, 106, type: :string
  field :product_title, 107, type: :string
  field :product_type_l1, 108, type: :string
  field :product_type_l2, 109, type: :string
  field :product_type_l3, 110, type: :string
  field :product_type_l4, 111, type: :string
  field :product_type_l5, 112, type: :string
  field :quarter, 128, type: :string

  field :search_engine_results_page_type, 70,
    type:
      Google.Ads.Googleads.V7.Enums.SearchEngineResultsPageTypeEnum.SearchEngineResultsPageType,
    enum: true

  field :search_term_match_type, 22,
    type: Google.Ads.Googleads.V7.Enums.SearchTermMatchTypeEnum.SearchTermMatchType,
    enum: true

  field :slot, 23, type: Google.Ads.Googleads.V7.Enums.SlotEnum.Slot, enum: true
  field :webpage, 129, type: :string
  field :week, 130, type: :string
  field :year, 131, type: :int32
  field :sk_ad_network_conversion_value, 137, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.Keyword do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :ad_group_criterion, 3, type: :string
  field :info, 2, type: Google.Ads.Googleads.V7.Common.KeywordInfo
end

defmodule Google.Ads.Googleads.V7.Common.BudgetCampaignAssociationStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :campaign, 1, type: :string

  field :status, 2,
    type:
      Google.Ads.Googleads.V7.Enums.BudgetCampaignAssociationStatusEnum.BudgetCampaignAssociationStatus,
    enum: true
end
