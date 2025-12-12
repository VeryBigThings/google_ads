defmodule Google.Ads.Googleads.V7.Resources.DynamicSearchAdsSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :search_term, 9, type: :string
  field :headline, 10, type: :string
  field :landing_page, 11, type: :string
  field :page_url, 12, type: :string
  field :has_negative_keyword, 13, type: :bool
  field :has_matching_keyword, 14, type: :bool
  field :has_negative_url, 15, type: :bool
end
