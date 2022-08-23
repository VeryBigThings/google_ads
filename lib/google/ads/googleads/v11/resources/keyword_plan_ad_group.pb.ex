defmodule Google.Ads.Googleads.V11.Resources.KeywordPlanAdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_campaign: String.t(),
          id: integer,
          name: String.t(),
          cpc_bid_micros: integer
        }

  defstruct resource_name: "",
            keyword_plan_campaign: "",
            id: 0,
            name: "",
            cpc_bid_micros: 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :keyword_plan_campaign, 6,
    type: :string,
    json_name: "keywordPlanCampaign",
    deprecated: false

  field :id, 7, type: :int64, deprecated: false
  field :name, 8, type: :string
  field :cpc_bid_micros, 9, type: :int64, json_name: "cpcBidMicros"
end
