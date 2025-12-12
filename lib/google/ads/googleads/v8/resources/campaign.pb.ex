defmodule Google.Ads.Googleads.V8.Resources.Campaign.NetworkSettings do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :target_google_search, 5, optional: true, type: :bool
  field :target_search_network, 6, optional: true, type: :bool
  field :target_content_network, 7, optional: true, type: :bool
  field :target_partner_search_network, 8, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.HotelSettingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :hotel_center_id, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.DynamicSearchAdsSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :domain_name, 6, required: true, type: :string
  field :language_code, 7, required: true, type: :string
  field :use_supplied_urls_only, 8, optional: true, type: :bool
  field :feeds, 9, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.OptimizationGoalSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :optimization_goal_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.OptimizationGoalTypeEnum.OptimizationGoalType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.ShoppingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :merchant_id, 5, optional: true, type: :int64
  field :sales_country, 6, optional: true, type: :string
  field :campaign_priority, 7, optional: true, type: :int32
  field :enable_local, 8, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.TrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :tracking_url, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.GeoTargetTypeSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :positive_geo_target_type, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType,
    enum: true

  field :negative_geo_target_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.LocalCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :location_source_type, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.LocationSourceTypeEnum.LocationSourceType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.VanityPharma do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :vanity_pharma_display_url_mode, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode,
    enum: true

  field :vanity_pharma_text, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.VanityPharmaTextEnum.VanityPharmaText,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.AppCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :bidding_strategy_goal_type, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType,
    enum: true

  field :app_id, 4, optional: true, type: :string

  field :app_store, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign.SelectiveOptimization do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :conversion_actions, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Resources.Campaign do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :campaign_bidding_strategy, 0
  field :resource_name, 1, optional: true, type: :string
  field :id, 59, optional: true, type: :int64
  field :name, 58, optional: true, type: :string

  field :status, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CampaignStatusEnum.CampaignStatus,
    enum: true

  field :serving_status, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CampaignServingStatusEnum.CampaignServingStatus,
    enum: true

  field :ad_serving_optimization_status, 8,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus,
    enum: true

  field :advertising_channel_type, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    enum: true

  field :advertising_channel_sub_type, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    enum: true

  field :tracking_url_template, 60, optional: true, type: :string

  field :url_custom_parameters, 12,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :real_time_bidding_setting, 39,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.RealTimeBiddingSetting

  field :network_settings, 14,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.NetworkSettings

  field :hotel_setting, 32,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.HotelSettingInfo

  field :dynamic_search_ads_setting, 33,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.DynamicSearchAdsSetting

  field :shopping_setting, 36,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.ShoppingSetting

  field :targeting_setting, 43,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetingSetting

  field :geo_target_type_setting, 47,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.GeoTargetTypeSetting

  field :local_campaign_setting, 50,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.LocalCampaignSetting

  field :app_campaign_setting, 51,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.AppCampaignSetting

  field :labels, 61, repeated: true, type: :string

  field :experiment_type, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CampaignExperimentTypeEnum.CampaignExperimentType,
    enum: true

  field :base_campaign, 56, optional: true, type: :string
  field :campaign_budget, 62, optional: true, type: :string

  field :bidding_strategy_type, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :accessible_bidding_strategy, 71, optional: true, type: :string
  field :start_date, 63, optional: true, type: :string
  field :end_date, 64, optional: true, type: :string
  field :final_url_suffix, 65, optional: true, type: :string

  field :frequency_caps, 40,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.FrequencyCapEntry

  field :video_brand_safety_suitability, 42,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability,
    enum: true

  field :vanity_pharma, 44,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.VanityPharma

  field :selective_optimization, 45,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.SelectiveOptimization

  field :optimization_goal_setting, 54,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.OptimizationGoalSetting

  field :tracking_setting, 46,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.Campaign.TrackingSetting

  field :payment_mode, 52,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PaymentModeEnum.PaymentMode,
    enum: true

  field :optimization_score, 66, optional: true, type: :double

  field :excluded_parent_asset_field_types, 69,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true

  field :bidding_strategy, 67, optional: true, type: :string, oneof: 0
  field :commission, 49, optional: true, type: Google.Ads.Googleads.V8.Common.Commission, oneof: 0
  field :manual_cpc, 24, optional: true, type: Google.Ads.Googleads.V8.Common.ManualCpc, oneof: 0
  field :manual_cpm, 25, optional: true, type: Google.Ads.Googleads.V8.Common.ManualCpm, oneof: 0
  field :manual_cpv, 37, optional: true, type: Google.Ads.Googleads.V8.Common.ManualCpv, oneof: 0

  field :maximize_conversions, 30,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MaximizeConversions,
    oneof: 0

  field :maximize_conversion_value, 31,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MaximizeConversionValue,
    oneof: 0

  field :target_cpa, 26, optional: true, type: Google.Ads.Googleads.V8.Common.TargetCpa, oneof: 0

  field :target_impression_share, 48,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetImpressionShare,
    oneof: 0

  field :target_roas, 29,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetRoas,
    oneof: 0

  field :target_spend, 27,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetSpend,
    oneof: 0

  field :percent_cpc, 34,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PercentCpc,
    oneof: 0

  field :target_cpm, 41, optional: true, type: Google.Ads.Googleads.V8.Common.TargetCpm, oneof: 0
end
