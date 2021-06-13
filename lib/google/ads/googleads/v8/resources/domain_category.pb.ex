defmodule Google.Ads.Googleads.V8.Resources.DomainCategory do
  @moduledoc false
  use Protobuf, syntax: :proto2

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

  field :resource_name, 1, optional: true, type: :string
  field :campaign, 10, optional: true, type: :string
  field :category, 11, optional: true, type: :string
  field :language_code, 12, optional: true, type: :string
  field :domain, 13, optional: true, type: :string
  field :coverage_fraction, 14, optional: true, type: :double
  field :category_rank, 15, optional: true, type: :int64
  field :has_children, 16, optional: true, type: :bool
  field :recommended_cpc_bid_micros, 17, optional: true, type: :int64
end
