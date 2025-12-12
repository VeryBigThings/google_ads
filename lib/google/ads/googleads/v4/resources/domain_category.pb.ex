defmodule Google.Ads.Googleads.V4.Resources.DomainCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :campaign, 2, type: Google.Protobuf.StringValue
  field :category, 3, type: Google.Protobuf.StringValue
  field :language_code, 4, type: Google.Protobuf.StringValue
  field :domain, 5, type: Google.Protobuf.StringValue
  field :coverage_fraction, 6, type: Google.Protobuf.DoubleValue
  field :category_rank, 7, type: Google.Protobuf.Int64Value
  field :has_children, 8, type: Google.Protobuf.BoolValue
  field :recommended_cpc_bid_micros, 9, type: Google.Protobuf.Int64Value
end
