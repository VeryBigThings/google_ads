defmodule Google.Ads.Googleads.V8.Resources.BiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          scheme: {atom, any},
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus.t(),
          type: Google.Ads.Googleads.V8.Enums.BiddingStrategyTypeEnum.BiddingStrategyType.t(),
          currency_code: String.t(),
          effective_currency_code: String.t(),
          campaign_count: integer,
          non_removed_campaign_count: integer
        }

  defstruct [
    :scheme,
    :resource_name,
    :id,
    :name,
    :status,
    :type,
    :currency_code,
    :effective_currency_code,
    :campaign_count,
    :non_removed_campaign_count
  ]

  oneof :scheme, 0
  field :resource_name, 1, optional: true, type: :string
  field :id, 16, optional: true, type: :int64
  field :name, 17, optional: true, type: :string

  field :status, 15,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus,
    enum: true

  field :type, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :currency_code, 23, required: true, type: :string
  field :effective_currency_code, 20, optional: true, type: :string
  field :campaign_count, 18, optional: true, type: :int64
  field :non_removed_campaign_count, 19, optional: true, type: :int64

  field :enhanced_cpc, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.EnhancedCpc,
    oneof: 0

  field :maximize_conversion_value, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MaximizeConversionValue,
    oneof: 0

  field :maximize_conversions, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MaximizeConversions,
    oneof: 0

  field :target_cpa, 9, optional: true, type: Google.Ads.Googleads.V8.Common.TargetCpa, oneof: 0

  field :target_impression_share, 48,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetImpressionShare,
    oneof: 0

  field :target_roas, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetRoas,
    oneof: 0

  field :target_spend, 12,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.TargetSpend,
    oneof: 0
end
