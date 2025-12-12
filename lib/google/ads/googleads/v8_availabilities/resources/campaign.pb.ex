defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.NetworkSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :target_google_search, 5, type: :bool
  field :target_search_network, 6, type: :bool
  field :target_content_network, 7, type: :bool
  field :target_partner_search_network, 8, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.HotelSettingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :hotel_center_id, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.DynamicSearchAdsSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :domain_name, 6, type: :string
  field :language_code, 7, type: :string
  field :use_supplied_urls_only, 8, type: :bool
  field :feeds, 9, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.OptimizationGoalSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :optimization_goal_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Enums.OptimizationGoalTypeEnum.OptimizationGoalType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.ShoppingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :merchant_id, 5, type: :int64
  field :sales_country, 6, type: :string
  field :campaign_priority, 7, type: :int32
  field :enable_local, 8, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.TrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :tracking_url, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.GeoTargetTypeSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :positive_geo_target_type, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType,
    enum: true

  field :negative_geo_target_type, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.LocalCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :location_source_type, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.LocationSourceTypeEnum.LocationSourceType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.VanityPharma do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :vanity_pharma_display_url_mode, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode,
    enum: true

  field :vanity_pharma_text, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.VanityPharmaTextEnum.VanityPharmaText,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.AppCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :bidding_strategy_goal_type, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType,
    enum: true

  field :app_id, 4, type: :string

  field :app_store, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign.SelectiveOptimization do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :conversion_actions, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Campaign do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :campaign_bidding_strategy, 0

  field :resource_name, 1, type: :string
  field :id, 59, type: :int64
  field :name, 58, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.CampaignStatusEnum.CampaignStatus,
    enum: true

  field :serving_status, 21,
    type: Google.Ads.Googleads.V8Availabilities.Enums.CampaignServingStatusEnum.CampaignServingStatus,
    enum: true

  field :ad_serving_optimization_status, 8,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus,
    enum: true

  field :advertising_channel_type, 9,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    enum: true

  field :advertising_channel_sub_type, 10,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    enum: true

  field :tracking_url_template, 60, type: :string

  field :url_custom_parameters, 12,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.CustomParameter

  field :real_time_bidding_setting, 39,
    type: Google.Ads.Googleads.V8Availabilities.Common.RealTimeBiddingSetting

  field :network_settings, 14, type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.NetworkSettings
  field :hotel_setting, 32, type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.HotelSettingInfo

  field :dynamic_search_ads_setting, 33,
    type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.DynamicSearchAdsSetting

  field :shopping_setting, 36, type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.ShoppingSetting
  field :targeting_setting, 43, type: Google.Ads.Googleads.V8Availabilities.Common.TargetingSetting

  field :geo_target_type_setting, 47,
    type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.GeoTargetTypeSetting

  field :local_campaign_setting, 50,
    type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.LocalCampaignSetting

  field :app_campaign_setting, 51,
    type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.AppCampaignSetting

  field :labels, 61, repeated: true, type: :string

  field :experiment_type, 17,
    type: Google.Ads.Googleads.V8Availabilities.Enums.CampaignExperimentTypeEnum.CampaignExperimentType,
    enum: true

  field :base_campaign, 56, type: :string
  field :campaign_budget, 62, type: :string

  field :bidding_strategy_type, 22,
    type: Google.Ads.Googleads.V8Availabilities.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :accessible_bidding_strategy, 71, type: :string
  field :start_date, 63, type: :string
  field :end_date, 64, type: :string
  field :final_url_suffix, 65, type: :string

  field :frequency_caps, 40,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.FrequencyCapEntry

  field :video_brand_safety_suitability, 42,
    type: Google.Ads.Googleads.V8Availabilities.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability,
    enum: true

  field :vanity_pharma, 44, type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.VanityPharma

  field :selective_optimization, 45,
    type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.SelectiveOptimization

  field :optimization_goal_setting, 54,
    type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.OptimizationGoalSetting

  field :tracking_setting, 46, type: Google.Ads.Googleads.V8Availabilities.Resources.Campaign.TrackingSetting

  field :payment_mode, 52,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PaymentModeEnum.PaymentMode,
    enum: true

  field :optimization_score, 66, type: :double

  field :excluded_parent_asset_field_types, 69,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :bidding_strategy, 67, type: :string, oneof: 0
  field :commission, 49, type: Google.Ads.Googleads.V8Availabilities.Common.Commission, oneof: 0
  field :manual_cpc, 24, type: Google.Ads.Googleads.V8Availabilities.Common.ManualCpc, oneof: 0
  field :manual_cpm, 25, type: Google.Ads.Googleads.V8Availabilities.Common.ManualCpm, oneof: 0
  field :manual_cpv, 37, type: Google.Ads.Googleads.V8Availabilities.Common.ManualCpv, oneof: 0

  field :maximize_conversions, 30,
    type: Google.Ads.Googleads.V8Availabilities.Common.MaximizeConversions,
    oneof: 0

  field :maximize_conversion_value, 31,
    type: Google.Ads.Googleads.V8Availabilities.Common.MaximizeConversionValue,
    oneof: 0

  field :target_cpa, 26, type: Google.Ads.Googleads.V8Availabilities.Common.TargetCpa, oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V8Availabilities.Common.TargetImpressionShare,
    oneof: 0

  field :target_roas, 29, type: Google.Ads.Googleads.V8Availabilities.Common.TargetRoas, oneof: 0
  field :target_spend, 27, type: Google.Ads.Googleads.V8Availabilities.Common.TargetSpend, oneof: 0
  field :percent_cpc, 34, type: Google.Ads.Googleads.V8Availabilities.Common.PercentCpc, oneof: 0
  field :target_cpm, 41, type: Google.Ads.Googleads.V8Availabilities.Common.TargetCpm, oneof: 0
end
