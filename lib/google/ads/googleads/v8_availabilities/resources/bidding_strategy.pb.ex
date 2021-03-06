defmodule Google.Ads.Googleads.V8Availabilities.Resources.BiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scheme: {atom, any},
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status:
            Google.Ads.Googleads.V8Availabilities.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus.t(),
          type: Google.Ads.Googleads.V8Availabilities.Enums.BiddingStrategyTypeEnum.BiddingStrategyType.t(),
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

  field :resource_name, 1, type: :string
  field :id, 16, type: :int64
  field :name, 17, type: :string

  field :status, 15,
    type: Google.Ads.Googleads.V8Availabilities.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus,
    enum: true

  field :type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :currency_code, 23, type: :string
  field :effective_currency_code, 20, type: :string
  field :campaign_count, 18, type: :int64
  field :non_removed_campaign_count, 19, type: :int64
  field :enhanced_cpc, 7, type: Google.Ads.Googleads.V8Availabilities.Common.EnhancedCpc, oneof: 0

  field :maximize_conversion_value, 21,
    type: Google.Ads.Googleads.V8Availabilities.Common.MaximizeConversionValue,
    oneof: 0

  field :maximize_conversions, 22,
    type: Google.Ads.Googleads.V8Availabilities.Common.MaximizeConversions,
    oneof: 0

  field :target_cpa, 9, type: Google.Ads.Googleads.V8Availabilities.Common.TargetCpa, oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V8Availabilities.Common.TargetImpressionShare,
    oneof: 0

  field :target_roas, 11, type: Google.Ads.Googleads.V8Availabilities.Common.TargetRoas, oneof: 0
  field :target_spend, 12, type: Google.Ads.Googleads.V8Availabilities.Common.TargetSpend, oneof: 0
end
