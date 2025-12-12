defmodule Google.Ads.Googleads.V4.Resources.Campaign.NetworkSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :target_google_search, 1, type: Google.Protobuf.BoolValue
  field :target_search_network, 2, type: Google.Protobuf.BoolValue
  field :target_content_network, 3, type: Google.Protobuf.BoolValue
  field :target_partner_search_network, 4, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.HotelSettingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :hotel_center_id, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.DynamicSearchAdsSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :domain_name, 1, type: Google.Protobuf.StringValue
  field :language_code, 2, type: Google.Protobuf.StringValue
  field :use_supplied_urls_only, 3, type: Google.Protobuf.BoolValue
  field :feeds, 5, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.GeoTargetTypeSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :positive_geo_target_type, 1,
    type: Google.Ads.Googleads.V4.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType,
    enum: true

  field :negative_geo_target_type, 2,
    type: Google.Ads.Googleads.V4.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.AppCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :bidding_strategy_goal_type, 1,
    type:
      Google.Ads.Googleads.V4.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType,
    enum: true

  field :app_id, 2, type: Google.Protobuf.StringValue

  field :app_store, 3,
    type: Google.Ads.Googleads.V4.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.OptimizationGoalSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :optimization_goal_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.OptimizationGoalTypeEnum.OptimizationGoalType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.ShoppingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :merchant_id, 1, type: Google.Protobuf.Int64Value
  field :sales_country, 2, type: Google.Protobuf.StringValue
  field :campaign_priority, 3, type: Google.Protobuf.Int32Value
  field :enable_local, 4, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.TrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :tracking_url, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.LocalCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :location_source_type, 1,
    type: Google.Ads.Googleads.V4.Enums.LocationSourceTypeEnum.LocationSourceType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.VanityPharma do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :vanity_pharma_display_url_mode, 1,
    type: Google.Ads.Googleads.V4.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode,
    enum: true

  field :vanity_pharma_text, 2,
    type: Google.Ads.Googleads.V4.Enums.VanityPharmaTextEnum.VanityPharmaText,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign.SelectiveOptimization do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :conversion_actions, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.Campaign do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :campaign_bidding_strategy, 0

  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.CampaignStatusEnum.CampaignStatus,
    enum: true

  field :serving_status, 21,
    type: Google.Ads.Googleads.V4.Enums.CampaignServingStatusEnum.CampaignServingStatus,
    enum: true

  field :ad_serving_optimization_status, 8,
    type:
      Google.Ads.Googleads.V4.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus,
    enum: true

  field :advertising_channel_type, 9,
    type: Google.Ads.Googleads.V4.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    enum: true

  field :advertising_channel_sub_type, 10,
    type: Google.Ads.Googleads.V4.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    enum: true

  field :tracking_url_template, 11, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 12,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :real_time_bidding_setting, 39,
    type: Google.Ads.Googleads.V4.Common.RealTimeBiddingSetting

  field :network_settings, 14, type: Google.Ads.Googleads.V4.Resources.Campaign.NetworkSettings
  field :hotel_setting, 32, type: Google.Ads.Googleads.V4.Resources.Campaign.HotelSettingInfo

  field :dynamic_search_ads_setting, 33,
    type: Google.Ads.Googleads.V4.Resources.Campaign.DynamicSearchAdsSetting

  field :shopping_setting, 36, type: Google.Ads.Googleads.V4.Resources.Campaign.ShoppingSetting
  field :targeting_setting, 43, type: Google.Ads.Googleads.V4.Common.TargetingSetting

  field :geo_target_type_setting, 47,
    type: Google.Ads.Googleads.V4.Resources.Campaign.GeoTargetTypeSetting

  field :local_campaign_setting, 50,
    type: Google.Ads.Googleads.V4.Resources.Campaign.LocalCampaignSetting

  field :app_campaign_setting, 51,
    type: Google.Ads.Googleads.V4.Resources.Campaign.AppCampaignSetting

  field :labels, 53, repeated: true, type: Google.Protobuf.StringValue

  field :experiment_type, 17,
    type: Google.Ads.Googleads.V4.Enums.CampaignExperimentTypeEnum.CampaignExperimentType,
    enum: true

  field :base_campaign, 28, type: Google.Protobuf.StringValue
  field :campaign_budget, 6, type: Google.Protobuf.StringValue

  field :bidding_strategy_type, 22,
    type: Google.Ads.Googleads.V4.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :start_date, 19, type: Google.Protobuf.StringValue
  field :end_date, 20, type: Google.Protobuf.StringValue
  field :final_url_suffix, 38, type: Google.Protobuf.StringValue

  field :frequency_caps, 40,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.FrequencyCapEntry

  field :video_brand_safety_suitability, 42,
    type: Google.Ads.Googleads.V4.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability,
    enum: true

  field :vanity_pharma, 44, type: Google.Ads.Googleads.V4.Resources.Campaign.VanityPharma

  field :selective_optimization, 45,
    type: Google.Ads.Googleads.V4.Resources.Campaign.SelectiveOptimization

  field :optimization_goal_setting, 54,
    type: Google.Ads.Googleads.V4.Resources.Campaign.OptimizationGoalSetting

  field :tracking_setting, 46, type: Google.Ads.Googleads.V4.Resources.Campaign.TrackingSetting

  field :payment_mode, 52,
    type: Google.Ads.Googleads.V4.Enums.PaymentModeEnum.PaymentMode,
    enum: true

  field :optimization_score, 55, type: Google.Protobuf.DoubleValue
  field :bidding_strategy, 23, type: Google.Protobuf.StringValue, oneof: 0
  field :commission, 49, type: Google.Ads.Googleads.V4.Common.Commission, oneof: 0
  field :manual_cpc, 24, type: Google.Ads.Googleads.V4.Common.ManualCpc, oneof: 0
  field :manual_cpm, 25, type: Google.Ads.Googleads.V4.Common.ManualCpm, oneof: 0
  field :manual_cpv, 37, type: Google.Ads.Googleads.V4.Common.ManualCpv, oneof: 0

  field :maximize_conversions, 30,
    type: Google.Ads.Googleads.V4.Common.MaximizeConversions,
    oneof: 0

  field :maximize_conversion_value, 31,
    type: Google.Ads.Googleads.V4.Common.MaximizeConversionValue,
    oneof: 0

  field :target_cpa, 26, type: Google.Ads.Googleads.V4.Common.TargetCpa, oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V4.Common.TargetImpressionShare,
    oneof: 0

  field :target_roas, 29, type: Google.Ads.Googleads.V4.Common.TargetRoas, oneof: 0
  field :target_spend, 27, type: Google.Ads.Googleads.V4.Common.TargetSpend, oneof: 0
  field :percent_cpc, 34, type: Google.Ads.Googleads.V4.Common.PercentCpc, oneof: 0
  field :target_cpm, 41, type: Google.Ads.Googleads.V4.Common.TargetCpm, oneof: 0
end
