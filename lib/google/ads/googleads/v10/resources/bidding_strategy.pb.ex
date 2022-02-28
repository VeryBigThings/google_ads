defmodule Google.Ads.Googleads.V10.Resources.BiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scheme:
            {:enhanced_cpc, Google.Ads.Googleads.V10.Common.EnhancedCpc.t() | nil}
            | {:maximize_conversion_value,
               Google.Ads.Googleads.V10.Common.MaximizeConversionValue.t() | nil}
            | {:maximize_conversions,
               Google.Ads.Googleads.V10.Common.MaximizeConversions.t() | nil}
            | {:target_cpa, Google.Ads.Googleads.V10.Common.TargetCpa.t() | nil}
            | {:target_impression_share,
               Google.Ads.Googleads.V10.Common.TargetImpressionShare.t() | nil}
            | {:target_roas, Google.Ads.Googleads.V10.Common.TargetRoas.t() | nil}
            | {:target_spend, Google.Ads.Googleads.V10.Common.TargetSpend.t() | nil},
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status:
            Google.Ads.Googleads.V10.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus.t(),
          type: Google.Ads.Googleads.V10.Enums.BiddingStrategyTypeEnum.BiddingStrategyType.t(),
          currency_code: String.t(),
          effective_currency_code: String.t(),
          campaign_count: integer,
          non_removed_campaign_count: integer
        }

  defstruct scheme: nil,
            resource_name: "",
            id: 0,
            name: "",
            status: :UNSPECIFIED,
            type: :UNSPECIFIED,
            currency_code: "",
            effective_currency_code: "",
            campaign_count: 0,
            non_removed_campaign_count: 0

  oneof :scheme, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 16, type: :int64, deprecated: false
  field :name, 17, type: :string

  field :status, 15,
    type: Google.Ads.Googleads.V10.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus,
    enum: true,
    deprecated: false

  field :type, 5,
    type: Google.Ads.Googleads.V10.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true,
    deprecated: false

  field :currency_code, 23, type: :string, json_name: "currencyCode", deprecated: false

  field :effective_currency_code, 20,
    type: :string,
    json_name: "effectiveCurrencyCode",
    deprecated: false

  field :campaign_count, 18, type: :int64, json_name: "campaignCount", deprecated: false

  field :non_removed_campaign_count, 19,
    type: :int64,
    json_name: "nonRemovedCampaignCount",
    deprecated: false

  field :enhanced_cpc, 7,
    type: Google.Ads.Googleads.V10.Common.EnhancedCpc,
    json_name: "enhancedCpc",
    oneof: 0

  field :maximize_conversion_value, 21,
    type: Google.Ads.Googleads.V10.Common.MaximizeConversionValue,
    json_name: "maximizeConversionValue",
    oneof: 0

  field :maximize_conversions, 22,
    type: Google.Ads.Googleads.V10.Common.MaximizeConversions,
    json_name: "maximizeConversions",
    oneof: 0

  field :target_cpa, 9,
    type: Google.Ads.Googleads.V10.Common.TargetCpa,
    json_name: "targetCpa",
    oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V10.Common.TargetImpressionShare,
    json_name: "targetImpressionShare",
    oneof: 0

  field :target_roas, 11,
    type: Google.Ads.Googleads.V10.Common.TargetRoas,
    json_name: "targetRoas",
    oneof: 0

  field :target_spend, 12,
    type: Google.Ads.Googleads.V10.Common.TargetSpend,
    json_name: "targetSpend",
    oneof: 0
end
