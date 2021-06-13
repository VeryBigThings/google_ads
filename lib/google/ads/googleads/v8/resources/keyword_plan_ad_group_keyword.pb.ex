defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroupKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_ad_group: String.t(),
          id: integer,
          text: String.t(),
          match_type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
          cpc_bid_micros: integer,
          negative: boolean
        }

  defstruct [
    :resource_name,
    :keyword_plan_ad_group,
    :id,
    :text,
    :match_type,
    :cpc_bid_micros,
    :negative
  ]

  field :resource_name, 1, optional: true, type: :string
  field :keyword_plan_ad_group, 8, optional: true, type: :string
  field :id, 9, optional: true, type: :int64
  field :text, 10, optional: true, type: :string

  field :match_type, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :cpc_bid_micros, 11, optional: true, type: :int64
  field :negative, 12, optional: true, type: :bool
end
