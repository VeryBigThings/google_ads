defmodule Google.Ads.Googleads.V7.Resources.AdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 34, type: :int64
  field :name, 35, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V7.Enums.AdGroupStatusEnum.AdGroupStatus,
    enum: true

  field :type, 12, type: Google.Ads.Googleads.V7.Enums.AdGroupTypeEnum.AdGroupType, enum: true

  field :ad_rotation_mode, 22,
    type: Google.Ads.Googleads.V7.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode,
    enum: true

  field :base_ad_group, 36, type: :string
  field :tracking_url_template, 37, type: :string

  field :url_custom_parameters, 6,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.CustomParameter

  field :campaign, 38, type: :string
  field :cpc_bid_micros, 39, type: :int64
  field :cpm_bid_micros, 40, type: :int64
  field :target_cpa_micros, 41, type: :int64
  field :cpv_bid_micros, 42, type: :int64
  field :target_cpm_micros, 43, type: :int64
  field :target_roas, 44, type: :double
  field :percent_cpc_bid_micros, 45, type: :int64

  field :explorer_auto_optimizer_setting, 21,
    type: Google.Ads.Googleads.V7.Common.ExplorerAutoOptimizerSetting

  field :display_custom_bid_dimension, 23,
    type: Google.Ads.Googleads.V7.Enums.TargetingDimensionEnum.TargetingDimension,
    enum: true

  field :final_url_suffix, 46, type: :string
  field :targeting_setting, 25, type: Google.Ads.Googleads.V7.Common.TargetingSetting
  field :effective_target_cpa_micros, 47, type: :int64

  field :effective_target_cpa_source, 29,
    type: Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_target_roas, 48, type: :double

  field :effective_target_roas_source, 32,
    type: Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :labels, 49, repeated: true, type: :string

  field :excluded_parent_asset_field_types, 54,
    repeated: true,
    type: Google.Ads.Googleads.V7.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true
end
