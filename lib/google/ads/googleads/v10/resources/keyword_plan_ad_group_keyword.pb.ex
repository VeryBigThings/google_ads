defmodule Google.Ads.Googleads.V10.Resources.KeywordPlanAdGroupKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_ad_group: String.t(),
          id: integer,
          text: String.t(),
          match_type: Google.Ads.Googleads.V10.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
          cpc_bid_micros: integer,
          negative: boolean
        }

  defstruct resource_name: "",
            keyword_plan_ad_group: "",
            id: 0,
            text: "",
            match_type: :UNSPECIFIED,
            cpc_bid_micros: 0,
            negative: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :keyword_plan_ad_group, 8,
    type: :string,
    json_name: "keywordPlanAdGroup",
    deprecated: false

  field :id, 9, type: :int64, deprecated: false
  field :text, 10, type: :string

  field :match_type, 5,
    type: Google.Ads.Googleads.V10.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true

  field :cpc_bid_micros, 11, type: :int64, json_name: "cpcBidMicros"
  field :negative, 12, type: :bool, deprecated: false
end
