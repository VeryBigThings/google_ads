defmodule Google.Ads.Googleads.V8.Resources.BiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scheme: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V8.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus.t(),
          type: Google.Ads.Googleads.V8.Enums.BiddingStrategyTypeEnum.BiddingStrategyType.t(),
          currency_code: String.t(),
          effective_currency_code: Google.Protobuf.StringValue.t() | nil,
          campaign_count: Google.Protobuf.Int64Value.t() | nil,
          non_removed_campaign_count: Google.Protobuf.Int64Value.t() | nil
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
  field :id, 16, type: Google.Protobuf.Int64Value
  field :name, 17, type: Google.Protobuf.StringValue

  field :status, 15,
    type: Google.Ads.Googleads.V8.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus,
    enum: true

  field :type, 5,
    type: Google.Ads.Googleads.V8.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true

  field :currency_code, 23, type: :string
  field :effective_currency_code, 20, type: Google.Protobuf.StringValue
  field :campaign_count, 18, type: Google.Protobuf.Int64Value
  field :non_removed_campaign_count, 19, type: Google.Protobuf.Int64Value
  field :enhanced_cpc, 7, type: Google.Ads.Googleads.V8.Common.EnhancedCpc, oneof: 0

  field :maximize_conversion_value, 21,
    type: Google.Ads.Googleads.V8.Common.MaximizeConversionValue,
    oneof: 0

  field :maximize_conversions, 22,
    type: Google.Ads.Googleads.V8.Common.MaximizeConversions,
    oneof: 0

  field :target_cpa, 9, type: Google.Ads.Googleads.V8.Common.TargetCpa, oneof: 0

  field :target_impression_share, 48,
    type: Google.Ads.Googleads.V8.Common.TargetImpressionShare,
    oneof: 0

  field :target_roas, 11, type: Google.Ads.Googleads.V8.Common.TargetRoas, oneof: 0
  field :target_spend, 12, type: Google.Ads.Googleads.V8.Common.TargetSpend, oneof: 0
end
