defmodule Google.Ads.Googleads.V15.Resources.DynamicSearchAdsSearchTermView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :search_term, 9, type: :string, json_name: "searchTerm", deprecated: false
  field :headline, 10, type: :string, deprecated: false
  field :landing_page, 11, type: :string, json_name: "landingPage", deprecated: false
  field :page_url, 12, type: :string, json_name: "pageUrl", deprecated: false
  field :has_negative_keyword, 13, type: :bool, json_name: "hasNegativeKeyword", deprecated: false
  field :has_matching_keyword, 14, type: :bool, json_name: "hasMatchingKeyword", deprecated: false
  field :has_negative_url, 15, type: :bool, json_name: "hasNegativeUrl", deprecated: false
end