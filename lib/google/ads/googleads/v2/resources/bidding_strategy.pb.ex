defmodule Google.Ads.Googleads.V2.Resources.BiddingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scheme: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          status: atom | integer,
          type: atom | integer,
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
    :campaign_count,
    :non_removed_campaign_count
  ]

  oneof(:scheme, 0)
  field(:resource_name, 1, type: :string)
  field(:id, 3, type: Google.Protobuf.Int64Value)
  field(:name, 4, type: Google.Protobuf.StringValue)

  field(:status, 15,
    type: Google.Ads.Googleads.V2.Enums.BiddingStrategyStatusEnum.BiddingStrategyStatus,
    enum: true
  )

  field(:type, 5,
    type: Google.Ads.Googleads.V2.Enums.BiddingStrategyTypeEnum.BiddingStrategyType,
    enum: true
  )

  field(:campaign_count, 13, type: Google.Protobuf.Int64Value)
  field(:non_removed_campaign_count, 14, type: Google.Protobuf.Int64Value)
  field(:enhanced_cpc, 7, type: Google.Ads.Googleads.V2.Common.EnhancedCpc, oneof: 0)
  field(:page_one_promoted, 8, type: Google.Ads.Googleads.V2.Common.PageOnePromoted, oneof: 0)
  field(:target_cpa, 9, type: Google.Ads.Googleads.V2.Common.TargetCpa, oneof: 0)

  field(:target_impression_share, 48,
    type: Google.Ads.Googleads.V2.Common.TargetImpressionShare,
    oneof: 0
  )

  field(:target_outrank_share, 10,
    type: Google.Ads.Googleads.V2.Common.TargetOutrankShare,
    oneof: 0
  )

  field(:target_roas, 11, type: Google.Ads.Googleads.V2.Common.TargetRoas, oneof: 0)
  field(:target_spend, 12, type: Google.Ads.Googleads.V2.Common.TargetSpend, oneof: 0)
end
