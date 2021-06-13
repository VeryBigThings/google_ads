defmodule Google.Ads.Googleads.V8.Resources.AdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status: Google.Ads.Googleads.V8.Enums.AdGroupStatusEnum.AdGroupStatus.t(),
          type: Google.Ads.Googleads.V8.Enums.AdGroupTypeEnum.AdGroupType.t(),
          ad_rotation_mode:
            Google.Ads.Googleads.V8.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode.t(),
          base_ad_group: String.t(),
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V8.Common.CustomParameter.t()],
          campaign: String.t(),
          cpc_bid_micros: integer,
          cpm_bid_micros: integer,
          target_cpa_micros: integer,
          cpv_bid_micros: integer,
          target_cpm_micros: integer,
          target_roas: float | :infinity | :negative_infinity | :nan,
          percent_cpc_bid_micros: integer,
          explorer_auto_optimizer_setting:
            Google.Ads.Googleads.V8.Common.ExplorerAutoOptimizerSetting.t() | nil,
          display_custom_bid_dimension:
            Google.Ads.Googleads.V8.Enums.TargetingDimensionEnum.TargetingDimension.t(),
          final_url_suffix: String.t(),
          targeting_setting: Google.Ads.Googleads.V8.Common.TargetingSetting.t() | nil,
          effective_target_cpa_micros: integer,
          effective_target_cpa_source:
            Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_target_roas: float | :infinity | :negative_infinity | :nan,
          effective_target_roas_source:
            Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource.t(),
          labels: [String.t()],
          excluded_parent_asset_field_types: [
            [Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType.t()]
          ]
        }

  defstruct [
    :resource_name,
    :id,
    :name,
    :status,
    :type,
    :ad_rotation_mode,
    :base_ad_group,
    :tracking_url_template,
    :url_custom_parameters,
    :campaign,
    :cpc_bid_micros,
    :cpm_bid_micros,
    :target_cpa_micros,
    :cpv_bid_micros,
    :target_cpm_micros,
    :target_roas,
    :percent_cpc_bid_micros,
    :explorer_auto_optimizer_setting,
    :display_custom_bid_dimension,
    :final_url_suffix,
    :targeting_setting,
    :effective_target_cpa_micros,
    :effective_target_cpa_source,
    :effective_target_roas,
    :effective_target_roas_source,
    :labels,
    :excluded_parent_asset_field_types
  ]

  field :resource_name, 1, optional: true, type: :string
  field :id, 34, optional: true, type: :int64
  field :name, 35, optional: true, type: :string

  field :status, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdGroupStatusEnum.AdGroupStatus,
    enum: true

  field :type, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdGroupTypeEnum.AdGroupType,
    enum: true

  field :ad_rotation_mode, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode,
    enum: true

  field :base_ad_group, 36, optional: true, type: :string
  field :tracking_url_template, 37, optional: true, type: :string

  field :url_custom_parameters, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :campaign, 38, optional: true, type: :string
  field :cpc_bid_micros, 39, optional: true, type: :int64
  field :cpm_bid_micros, 40, optional: true, type: :int64
  field :target_cpa_micros, 41, optional: true, type: :int64
  field :cpv_bid_micros, 42, optional: true, type: :int64
  field :target_cpm_micros, 43, optional: true, type: :int64
  field :target_roas, 44, optional: true, type: :double
  field :percent_cpc_bid_micros, 45, optional: true, type: :int64

  field :explorer_auto_optimizer_setting, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ExplorerAutoOptimizerSetting

  field :display_custom_bid_dimension, 23,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TargetingDimensionEnum.TargetingDimension,
    enum: true

  field :final_url_suffix, 46, optional: true, type: :string

  field :targeting_setting, 25,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetingSetting

  field :effective_target_cpa_micros, 47, optional: true, type: :int64

  field :effective_target_cpa_source, 29,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_target_roas, 48, optional: true, type: :double

  field :effective_target_roas_source, 32,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :labels, 49, repeated: true, type: :string

  field :excluded_parent_asset_field_types, 54,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true
end
