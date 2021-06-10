defmodule Google.Ads.Googleads.V8.Resources.DomainCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: Google.Protobuf.StringValue.t() | nil,
          category: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil,
          domain: Google.Protobuf.StringValue.t() | nil,
          coverage_fraction: Google.Protobuf.DoubleValue.t() | nil,
          category_rank: Google.Protobuf.Int64Value.t() | nil,
          has_children: Google.Protobuf.BoolValue.t() | nil,
          recommended_cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil
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
  field :campaign, 10, type: Google.Protobuf.StringValue
  field :category, 11, type: Google.Protobuf.StringValue
  field :language_code, 12, type: Google.Protobuf.StringValue
  field :domain, 13, type: Google.Protobuf.StringValue
  field :coverage_fraction, 14, type: Google.Protobuf.DoubleValue
  field :category_rank, 15, type: Google.Protobuf.Int64Value
  field :has_children, 16, type: Google.Protobuf.BoolValue
  field :recommended_cpc_bid_micros, 17, type: Google.Protobuf.Int64Value
end
