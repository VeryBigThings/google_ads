defmodule Google.Ads.Googleads.V10.Resources.Campaign.NetworkSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_google_search: boolean,
          target_search_network: boolean,
          target_content_network: boolean,
          target_partner_search_network: boolean
        }

  defstruct target_google_search: false,
            target_search_network: false,
            target_content_network: false,
            target_partner_search_network: false

  field :target_google_search, 5, type: :bool, json_name: "targetGoogleSearch"
  field :target_search_network, 6, type: :bool, json_name: "targetSearchNetwork"
  field :target_content_network, 7, type: :bool, json_name: "targetContentNetwork"
  field :target_partner_search_network, 8, type: :bool, json_name: "targetPartnerSearchNetwork"
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.HotelSettingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hotel_center_id: integer
        }

  defstruct hotel_center_id: 0

  field :hotel_center_id, 2, type: :int64, json_name: "hotelCenterId", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.DynamicSearchAdsSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          domain_name: String.t(),
          language_code: String.t(),
          use_supplied_urls_only: boolean,
          feeds: [String.t()]
        }

  defstruct domain_name: "",
            language_code: "",
            use_supplied_urls_only: false,
            feeds: []

  field :domain_name, 6, type: :string, json_name: "domainName", deprecated: false
  field :language_code, 7, type: :string, json_name: "languageCode", deprecated: false
  field :use_supplied_urls_only, 8, type: :bool, json_name: "useSuppliedUrlsOnly"
  field :feeds, 9, repeated: true, type: :string, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.ShoppingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_id: integer,
          sales_country: String.t(),
          campaign_priority: integer,
          enable_local: boolean,
          use_vehicle_inventory: boolean
        }

  defstruct merchant_id: 0,
            sales_country: "",
            campaign_priority: 0,
            enable_local: false,
            use_vehicle_inventory: false

  field :merchant_id, 5, type: :int64, json_name: "merchantId", deprecated: false
  field :sales_country, 6, type: :string, json_name: "salesCountry"
  field :campaign_priority, 7, type: :int32, json_name: "campaignPriority"
  field :enable_local, 8, type: :bool, json_name: "enableLocal"

  field :use_vehicle_inventory, 9,
    type: :bool,
    json_name: "useVehicleInventory",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.TrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tracking_url: String.t()
        }

  defstruct tracking_url: ""

  field :tracking_url, 2, type: :string, json_name: "trackingUrl", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.GeoTargetTypeSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          positive_geo_target_type:
            Google.Ads.Googleads.V10.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType.t(),
          negative_geo_target_type:
            Google.Ads.Googleads.V10.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType.t()
        }

  defstruct positive_geo_target_type: :UNSPECIFIED,
            negative_geo_target_type: :UNSPECIFIED

  field :positive_geo_target_type, 1,
    type: Google.Ads.Googleads.V10.Enums.PositiveGeoTargetTypeEnum.PositiveGeoTargetType,
    json_name: "positiveGeoTargetType",
    enum: true

  field :negative_geo_target_type, 2,
    type: Google.Ads.Googleads.V10.Enums.NegativeGeoTargetTypeEnum.NegativeGeoTargetType,
    json_name: "negativeGeoTargetType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.LocalCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location_source_type:
            Google.Ads.Googleads.V10.Enums.LocationSourceTypeEnum.LocationSourceType.t()
        }

  defstruct location_source_type: :UNSPECIFIED

  field :location_source_type, 1,
    type: Google.Ads.Googleads.V10.Enums.LocationSourceTypeEnum.LocationSourceType,
    json_name: "locationSourceType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.AppCampaignSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bidding_strategy_goal_type:
            Google.Ads.Googleads.V10.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType.t(),
          app_id: String.t(),
          app_store:
            Google.Ads.Googleads.V10.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore.t()
        }

  defstruct bidding_strategy_goal_type: :UNSPECIFIED,
            app_id: "",
            app_store: :UNSPECIFIED

  field :bidding_strategy_goal_type, 1,
    type:
      Google.Ads.Googleads.V10.Enums.AppCampaignBiddingStrategyGoalTypeEnum.AppCampaignBiddingStrategyGoalType,
    json_name: "biddingStrategyGoalType",
    enum: true

  field :app_id, 4, type: :string, json_name: "appId", deprecated: false

  field :app_store, 3,
    type: Google.Ads.Googleads.V10.Enums.AppCampaignAppStoreEnum.AppCampaignAppStore,
    json_name: "appStore",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.VanityPharma do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vanity_pharma_display_url_mode:
            Google.Ads.Googleads.V10.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode.t(),
          vanity_pharma_text:
            Google.Ads.Googleads.V10.Enums.VanityPharmaTextEnum.VanityPharmaText.t()
        }

  defstruct vanity_pharma_display_url_mode: :UNSPECIFIED,
            vanity_pharma_text: :UNSPECIFIED

  field :vanity_pharma_display_url_mode, 1,
    type:
      Google.Ads.Googleads.V10.Enums.VanityPharmaDisplayUrlModeEnum.VanityPharmaDisplayUrlMode,
    json_name: "vanityPharmaDisplayUrlMode",
    enum: true

  field :vanity_pharma_text, 2,
    type: Google.Ads.Googleads.V10.Enums.VanityPharmaTextEnum.VanityPharmaText,
    json_name: "vanityPharmaText",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.SelectiveOptimization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_actions: [String.t()]
        }

  defstruct conversion_actions: []

  field :conversion_actions, 2,
    repeated: true,
    type: :string,
    json_name: "conversionActions",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.OptimizationGoalSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          optimization_goal_types: [
            Google.Ads.Googleads.V10.Enums.OptimizationGoalTypeEnum.OptimizationGoalType.t()
          ]
        }

  defstruct optimization_goal_types: []

  field :optimization_goal_types, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.OptimizationGoalTypeEnum.OptimizationGoalType,
    json_name: "optimizationGoalTypes",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign.AudienceSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          use_audience_grouped: boolean
        }

  defstruct use_audience_grouped: false

  field :use_audience_grouped, 1, type: :bool, json_name: "useAudienceGrouped", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Campaign do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_bidding_strategy:
            {:bidding_strategy, String.t()}
            | {:commission, Google.Ads.Googleads.V10.Common.Commission.t() | nil}
            | {:manual_cpc, Google.Ads.Googleads.V10.Common.ManualCpc.t() | nil}
            | {:manual_cpm, Google.Ads.Googleads.V10.Common.ManualCpm.t() | nil}
            | {:manual_cpv, Google.Ads.Googleads.V10.Common.ManualCpv.t() | nil}
            | {:maximize_conversions,
               Google.Ads.Googleads.V10.Common.MaximizeConversions.t() | nil}
            | {:maximize_conversion_value,
               Google.Ads.Googleads.V10.Common.MaximizeConversionValue.t() | nil}
            | {:target_cpa, Google.Ads.Googleads.V10.Common.TargetCpa.t() | nil}
            | {:target_impression_share,
               Google.Ads.Googleads.V10.Common.TargetImpressionShare.t() | nil}
            | {:target_roas, Google.Ads.Googleads.V10.Common.TargetRoas.t() | nil}
            | {:target_spend, Google.Ads.Googleads.V10.Common.TargetSpend.t() | nil}
            | {:percent_cpc, Google.Ads.Googleads.V10.Common.PercentCpc.t() | nil}
            | {:target_cpm, Google.Ads.Googleads.V10.Common.TargetCpm.t() | nil},
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status: Google.Ads.Googleads.V10.Enums.CampaignStatusEnum.CampaignStatus.t(),
          serving_status:
            Google.Ads.Googleads.V10.Enums.CampaignServingStatusEnum.CampaignServingStatus.t(),
          ad_serving_optimization_status:
            Google.Ads.Googleads.V10.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus.t(),
          advertising_channel_type:
            Google.Ads.Googleads.V10.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType.t(),
          advertising_channel_sub_type:
            Google.Ads.Googleads.V10.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType.t(),
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V10.Common.CustomParameter.t()],
          real_time_bidding_setting:
            Google.Ads.Googleads.V10.Common.RealTimeBiddingSetting.t() | nil,
          network_settings: Google.Ads.Googleads.V10.Resources.Campaign.NetworkSettings.t() | nil,
          hotel_setting: Google.Ads.Googleads.V10.Resources.Campaign.HotelSettingInfo.t() | nil,
          dynamic_search_ads_setting:
            Google.Ads.Googleads.V10.Resources.Campaign.DynamicSearchAdsSetting.t() | nil,
          shopping_setting: Google.Ads.Googleads.V10.Resources.Campaign.ShoppingSetting.t() | nil,
          targeting_setting: Google.Ads.Googleads.V10.Common.TargetingSetting.t() | nil,
          audience_setting: Google.Ads.Googleads.V10.Resources.Campaign.AudienceSetting.t() | nil,
          geo_target_type_setting:
            Google.Ads.Googleads.V10.Resources.Campaign.GeoTargetTypeSetting.t() | nil,
          local_campaign_setting:
            Google.Ads.Googleads.V10.Resources.Campaign.LocalCampaignSetting.t() | nil,
          app_campaign_setting:
            Google.Ads.Googleads.V10.Resources.Campaign.AppCampaignSetting.t() | nil,
          labels: [String.t()],
          experiment_type:
            Google.Ads.Googleads.V10.Enums.CampaignExperimentTypeEnum.CampaignExperimentType.t(),
          base_campaign: String.t(),
          campaign_budget: String.t(),
          bidding_strategy_type:
            Google.Ads.Googleads.V10.Enums.BiddingStrategyTypeEnum.BiddingStrategyType.t(),
          accessible_bidding_strategy: String.t(),
          start_date: String.t(),
          end_date: String.t(),
          final_url_suffix: String.t(),
          frequency_caps: [Google.Ads.Googleads.V10.Common.FrequencyCapEntry.t()],
          video_brand_safety_suitability:
            Google.Ads.Googleads.V10.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability.t(),
          vanity_pharma: Google.Ads.Googleads.V10.Resources.Campaign.VanityPharma.t() | nil,
          selective_optimization:
            Google.Ads.Googleads.V10.Resources.Campaign.SelectiveOptimization.t() | nil,
          optimization_goal_setting:
            Google.Ads.Googleads.V10.Resources.Campaign.OptimizationGoalSetting.t() | nil,
          tracking_setting: Google.Ads.Googleads.V10.Resources.Campaign.TrackingSetting.t() | nil,
          payment_mode: Google.Ads.Googleads.V10.Enums.PaymentModeEnum.PaymentMode.t(),
          optimization_score: float | :infinity | :negative_infinity | :nan,
          excluded_parent_asset_field_types: [
            Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType.t()
          ],
          url_expansion_opt_out: boolean
        }

  defstruct campaign_bidding_strategy: nil,
            resource_name: "",
            id: 0,
            name: "",
            status: :UNSPECIFIED,
            serving_status: :UNSPECIFIED,
            ad_serving_optimization_status: :UNSPECIFIED,
            advertising_channel_type: :UNSPECIFIED,
            advertising_channel_sub_type: :UNSPECIFIED,
            tracking_url_template: "",
            url_custom_parameters: [],
            real_time_bidding_setting: nil,
            network_settings: nil,
            hotel_setting: nil,
            dynamic_search_ads_setting: nil,
            shopping_setting: nil,
            targeting_setting: nil,
            audience_setting: nil,
            geo_target_type_setting: nil,
            local_campaign_setting: nil,
            app_campaign_setting: nil,
            labels: [],
            experiment_type: :UNSPECIFIED,
            base_campaign: "",
            campaign_budget: "",
            bidding_strategy_type: :UNSPECIFIED,
            accessible_bidding_strategy: "",
            start_date: "",
            end_date: "",
            final_url_suffix: "",
            frequency_caps: [],
            video_brand_safety_suitability: :UNSPECIFIED,
            vanity_pharma: nil,
            selective_optimization: nil,
            optimization_goal_setting: nil,
            tracking_setting: nil,
            payment_mode: :UNSPECIFIED,
            optimization_score: 0.0,
            excluded_parent_asset_field_types: [],
            url_expansion_opt_out: false

  oneof :campaign_bidding_strategy, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 59, type: :int64, deprecated: false
  field :name, 58, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V10.Enums.CampaignStatusEnum.CampaignStatus,
    enum: true

  field :serving_status, 21,
    type: Google.Ads.Googleads.V10.Enums.CampaignServingStatusEnum.CampaignServingStatus,
    json_name: "servingStatus",
    enum: true,
    deprecated: false

  field :ad_serving_optimization_status, 8,
    type:
      Google.Ads.Googleads.V10.Enums.AdServingOptimizationStatusEnum.AdServingOptimizationStatus,
    json_name: "adServingOptimizationStatus",
    enum: true

  field :advertising_channel_type, 9,
    type: Google.Ads.Googleads.V10.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true,
    deprecated: false

  field :advertising_channel_sub_type, 10,
    type: Google.Ads.Googleads.V10.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType,
    json_name: "advertisingChannelSubType",
    enum: true,
    deprecated: false

  field :tracking_url_template, 60, type: :string, json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 12,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :real_time_bidding_setting, 39,
    type: Google.Ads.Googleads.V10.Common.RealTimeBiddingSetting,
    json_name: "realTimeBiddingSetting"

  field :network_settings, 14,
    type: Google.Ads.Googleads.V10.Resources.Campaign.NetworkSettings,
    json_name: "networkSettings"

  field :hotel_setting, 32,
    type: Google.Ads.Googleads.V10.Resources.Campaign.HotelSettingInfo,
    json_name: "hotelSetting",
    deprecated: false

  field :dynamic_search_ads_setting, 33,
    type: Google.Ads.Googleads.V10.Resources.Campaign.DynamicSearchAdsSetting,
    json_name: "dynamicSearchAdsSetting"

  field :shopping_setting, 36,
    type: Google.Ads.Googleads.V10.Resources.Campaign.ShoppingSetting,
    json_name: "shoppingSetting"

  field :targeting_setting, 43,
    type: Google.Ads.Googleads.V10.Common.TargetingSetting,
    json_name: "targetingSetting"

  field :audience_setting, 73,
    type: Google.Ads.Googleads.V10.Resources.Campaign.AudienceSetting,
    json_name: "audienceSetting",
    deprecated: false

  field :geo_target_type_setting, 47,
    type: Google.Ads.Googleads.V10.Resources.Campaign.GeoTargetTypeSetting,
    json_name: "geoTargetTypeSetting"

  field :local_campaign_setting, 50,
    type: Google.Ads.Googleads.V10.Resources.Campaign.LocalCampaignSetting,
    json_name: "localCampaignSetting"

  field :app_campaign_setting, 51,
    type: Google.Ads.Googleads.V10.Resources.Campaign.AppCampaignSetting,
    json_name: "appCampaignSetting"

  field :labels, 61, repeated: true, type: :string, deprecated: false

  field :experiment_type, 17,
    type: Google.Ads.Googleads.V10.Enums.CampaignExperimentTypeEnum.CampaignExperimentType,
    json_name: "experimentType",
    enum: true,
    deprecated: false

  field :base_campaign, 56, type: :string, json_name: "baseCampaign", deprecated: false
  field :campaign_budget, 62, type: :string, json_name: "campaignBudget", deprecated: false

  field :bidding_strategy_type, 22,
    type: Google.Ads.Googleads.V10.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    json_name: "biddingStrategyType",
    enum: true,
    deprecated: false

  field :accessible_bidding_strategy, 71,
    type: :string,
    json_name: "accessibleBiddingStrategy",
    deprecated: false

  field :start_date, 63, type: :string, json_name: "startDate"
  field :end_date, 64, type: :string, json_name: "endDate"
  field :final_url_suffix, 65, type: :string, json_name: "finalUrlSuffix"

  field :frequency_caps, 40,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.FrequencyCapEntry,
    json_name: "frequencyCaps"

  field :video_brand_safety_suitability, 42,
    type: Google.Ads.Googleads.V10.Enums.BrandSafetySuitabilityEnum.BrandSafetySuitability,
    json_name: "videoBrandSafetySuitability",
    enum: true,
    deprecated: false

  field :vanity_pharma, 44,
    type: Google.Ads.Googleads.V10.Resources.Campaign.VanityPharma,
    json_name: "vanityPharma"

  field :selective_optimization, 45,
    type: Google.Ads.Googleads.V10.Resources.Campaign.SelectiveOptimization,
    json_name: "selectiveOptimization"

  field :optimization_goal_setting, 54,
    type: Google.Ads.Googleads.V10.Resources.Campaign.OptimizationGoalSetting,
    json_name: "optimizationGoalSetting"

  field :tracking_setting, 46,
    type: Google.Ads.Googleads.V10.Resources.Campaign.TrackingSetting,
    json_name: "trackingSetting",
    deprecated: false

  field :payment_mode, 52,
    type: Google.Ads.Googleads.V10.Enums.PaymentModeEnum.PaymentMode,
    json_name: "paymentMode",
    enum: true

  field :optimization_score, 66, type: :double, json_name: "optimizationScore", deprecated: false

  field :excluded_parent_asset_field_types, 69,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "excludedParentAssetFieldTypes",
    enum: true

  field :url_expansion_opt_out, 72, type: :bool, json_name: "urlExpansionOptOut"

  field :bidding_strategy, 67,
    type: :string,
    json_name: "biddingStrategy",
    oneof: 0,
    deprecated: false

  field :commission, 49, type: Google.Ads.Googleads.V10.Common.Commission, oneof: 0

  field :manual_cpc, 24,
    type: Google.Ads.Googleads.V10.Common.ManualCpc,
    json_name: "manualCpc",
    oneof: 0

  field :manual_cpm, 25,
    type: Google.Ads.Googleads.V10.Common.ManualCpm,
    json_name: "manualCpm",
    oneof: 0

  field :manual_cpv, 37,
    type: Google.Ads.Googleads.V10.Common.ManualCpv,
    json_name: "manualCpv",
    oneof: 0,
    deprecated: false

  field :maximize_conversions, 30,
    type: Google.Ads.Googleads.V10.Common.MaximizeConversions,
    json_name: "maximizeConversions",
    oneof: 0

  field :maximize_conversion_value, 31,
    type: Google.Ads.Googleads.V10.Common.MaximizeConversionValue,
    json_name: "maximizeConversionValue",
    oneof: 0

  field :target_cpa, 26,
    type: Google.Ads.Googleads.V10.Common.TargetCpa,
    json_name: "targetCpa",
    oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V10.Common.TargetImpressionShare,
    json_name: "targetImpressionShare",
    oneof: 0

  field :target_roas, 29,
    type: Google.Ads.Googleads.V10.Common.TargetRoas,
    json_name: "targetRoas",
    oneof: 0

  field :target_spend, 27,
    type: Google.Ads.Googleads.V10.Common.TargetSpend,
    json_name: "targetSpend",
    oneof: 0

  field :percent_cpc, 34,
    type: Google.Ads.Googleads.V10.Common.PercentCpc,
    json_name: "percentCpc",
    oneof: 0

  field :target_cpm, 41,
    type: Google.Ads.Googleads.V10.Common.TargetCpm,
    json_name: "targetCpm",
    oneof: 0
end
