defmodule Google.Ads.Googleads.V10.Resources.DomainCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          category: String.t(),
          language_code: String.t(),
          domain: String.t(),
          coverage_fraction: float | :infinity | :negative_infinity | :nan,
          category_rank: integer,
          has_children: boolean,
          recommended_cpc_bid_micros: integer
        }

  defstruct resource_name: "",
            campaign: "",
            category: "",
            language_code: "",
            domain: "",
            coverage_fraction: 0.0,
            category_rank: 0,
            has_children: false,
            recommended_cpc_bid_micros: 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 10, type: :string, deprecated: false
  field :category, 11, type: :string, deprecated: false
  field :language_code, 12, type: :string, json_name: "languageCode", deprecated: false
  field :domain, 13, type: :string, deprecated: false
  field :coverage_fraction, 14, type: :double, json_name: "coverageFraction", deprecated: false
  field :category_rank, 15, type: :int64, json_name: "categoryRank", deprecated: false
  field :has_children, 16, type: :bool, json_name: "hasChildren", deprecated: false

  field :recommended_cpc_bid_micros, 17,
    type: :int64,
    json_name: "recommendedCpcBidMicros",
    deprecated: false
end
