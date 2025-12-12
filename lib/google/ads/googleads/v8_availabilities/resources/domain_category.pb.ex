defmodule Google.Ads.Googleads.V8Availabilities.Resources.DomainCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3



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
