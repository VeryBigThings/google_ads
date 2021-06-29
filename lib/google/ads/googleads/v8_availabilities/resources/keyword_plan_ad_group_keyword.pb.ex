defmodule Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanAdGroupKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_ad_group: String.t(),
          id: integer,
          text: String.t(),
          match_type: Google.Ads.Googleads.V8Availabilities.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
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

  field :resource_name, 1, type: :string
  field :keyword_plan_ad_group, 8, type: :string
  field :id, 9, type: :int64
  field :text, 10, type: :string

  field :match_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :cpc_bid_micros, 11, type: :int64
  field :negative, 12, type: :bool
end
