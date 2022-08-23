defmodule Google.Ads.Googleads.V11.Resources.AdGroup.AudienceSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          use_audience_grouped: boolean
        }

  defstruct use_audience_grouped: false

  field :use_audience_grouped, 1, type: :bool, json_name: "useAudienceGrouped", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.AdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status: Google.Ads.Googleads.V11.Enums.AdGroupStatusEnum.AdGroupStatus.t(),
          type: Google.Ads.Googleads.V11.Enums.AdGroupTypeEnum.AdGroupType.t(),
          ad_rotation_mode:
            Google.Ads.Googleads.V11.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode.t(),
          base_ad_group: String.t(),
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V11.Common.CustomParameter.t()],
          campaign: String.t(),
          cpc_bid_micros: integer,
          effective_cpc_bid_micros: integer,
          cpm_bid_micros: integer,
          target_cpa_micros: integer,
          cpv_bid_micros: integer,
          target_cpm_micros: integer,
          target_roas: float | :infinity | :negative_infinity | :nan,
          percent_cpc_bid_micros: integer,
          explorer_auto_optimizer_setting:
            Google.Ads.Googleads.V11.Common.ExplorerAutoOptimizerSetting.t() | nil,
          display_custom_bid_dimension:
            Google.Ads.Googleads.V11.Enums.TargetingDimensionEnum.TargetingDimension.t(),
          final_url_suffix: String.t(),
          targeting_setting: Google.Ads.Googleads.V11.Common.TargetingSetting.t() | nil,
          audience_setting: Google.Ads.Googleads.V11.Resources.AdGroup.AudienceSetting.t() | nil,
          effective_target_cpa_micros: integer,
          effective_target_cpa_source:
            Google.Ads.Googleads.V11.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_target_roas: float | :infinity | :negative_infinity | :nan,
          effective_target_roas_source:
            Google.Ads.Googleads.V11.Enums.BiddingSourceEnum.BiddingSource.t(),
          labels: [String.t()],
          excluded_parent_asset_field_types: [
            Google.Ads.Googleads.V11.Enums.AssetFieldTypeEnum.AssetFieldType.t()
          ]
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            status: :UNSPECIFIED,
            type: :UNSPECIFIED,
            ad_rotation_mode: :UNSPECIFIED,
            base_ad_group: "",
            tracking_url_template: "",
            url_custom_parameters: [],
            campaign: "",
            cpc_bid_micros: 0,
            effective_cpc_bid_micros: 0,
            cpm_bid_micros: 0,
            target_cpa_micros: 0,
            cpv_bid_micros: 0,
            target_cpm_micros: 0,
            target_roas: 0.0,
            percent_cpc_bid_micros: 0,
            explorer_auto_optimizer_setting: nil,
            display_custom_bid_dimension: :UNSPECIFIED,
            final_url_suffix: "",
            targeting_setting: nil,
            audience_setting: nil,
            effective_target_cpa_micros: 0,
            effective_target_cpa_source: :UNSPECIFIED,
            effective_target_roas: 0.0,
            effective_target_roas_source: :UNSPECIFIED,
            labels: [],
            excluded_parent_asset_field_types: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 34, type: :int64, deprecated: false
  field :name, 35, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.AdGroupStatusEnum.AdGroupStatus,
    enum: true

  field :type, 12,
    type: Google.Ads.Googleads.V11.Enums.AdGroupTypeEnum.AdGroupType,
    enum: true,
    deprecated: false

  field :ad_rotation_mode, 22,
    type: Google.Ads.Googleads.V11.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode,
    json_name: "adRotationMode",
    enum: true

  field :base_ad_group, 36, type: :string, json_name: "baseAdGroup", deprecated: false
  field :tracking_url_template, 37, type: :string, json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 6,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :campaign, 38, type: :string, deprecated: false
  field :cpc_bid_micros, 39, type: :int64, json_name: "cpcBidMicros"

  field :effective_cpc_bid_micros, 57,
    type: :int64,
    json_name: "effectiveCpcBidMicros",
    deprecated: false

  field :cpm_bid_micros, 40, type: :int64, json_name: "cpmBidMicros"
  field :target_cpa_micros, 41, type: :int64, json_name: "targetCpaMicros"
  field :cpv_bid_micros, 42, type: :int64, json_name: "cpvBidMicros", deprecated: false
  field :target_cpm_micros, 43, type: :int64, json_name: "targetCpmMicros"
  field :target_roas, 44, type: :double, json_name: "targetRoas"
  field :percent_cpc_bid_micros, 45, type: :int64, json_name: "percentCpcBidMicros"

  field :explorer_auto_optimizer_setting, 21,
    type: Google.Ads.Googleads.V11.Common.ExplorerAutoOptimizerSetting,
    json_name: "explorerAutoOptimizerSetting"

  field :display_custom_bid_dimension, 23,
    type: Google.Ads.Googleads.V11.Enums.TargetingDimensionEnum.TargetingDimension,
    json_name: "displayCustomBidDimension",
    enum: true

  field :final_url_suffix, 46, type: :string, json_name: "finalUrlSuffix"

  field :targeting_setting, 25,
    type: Google.Ads.Googleads.V11.Common.TargetingSetting,
    json_name: "targetingSetting"

  field :audience_setting, 56,
    type: Google.Ads.Googleads.V11.Resources.AdGroup.AudienceSetting,
    json_name: "audienceSetting",
    deprecated: false

  field :effective_target_cpa_micros, 47,
    type: :int64,
    json_name: "effectiveTargetCpaMicros",
    deprecated: false

  field :effective_target_cpa_source, 29,
    type: Google.Ads.Googleads.V11.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveTargetCpaSource",
    enum: true,
    deprecated: false

  field :effective_target_roas, 48,
    type: :double,
    json_name: "effectiveTargetRoas",
    deprecated: false

  field :effective_target_roas_source, 32,
    type: Google.Ads.Googleads.V11.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveTargetRoasSource",
    enum: true,
    deprecated: false

  field :labels, 49, repeated: true, type: :string, deprecated: false

  field :excluded_parent_asset_field_types, 54,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "excludedParentAssetFieldTypes",
    enum: true
end
