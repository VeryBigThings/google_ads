defmodule Google.Ads.Googleads.V8.Resources.DomainCategory do
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

  defstruct [
    :resource_name,
    :campaign,
    :category,
    :language_code,
    :domain,
    :coverage_fraction,
    :category_rank,
    :has_children,
    :recommended_cpc_bid_micros
  ]

  field :resource_name, 1, type: :string
  field :campaign, 10, type: :string
  field :category, 11, type: :string
  field :language_code, 12, type: :string
  field :domain, 13, type: :string
  field :coverage_fraction, 14, type: :double
  field :category_rank, 15, type: :int64
  field :has_children, 16, type: :bool
  field :recommended_cpc_bid_micros, 17, type: :int64
end
