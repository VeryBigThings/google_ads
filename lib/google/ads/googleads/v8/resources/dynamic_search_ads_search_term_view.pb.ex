defmodule Google.Ads.Googleads.V8.Resources.DynamicSearchAdsSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :search_term, 9, optional: true, type: :string
  field :headline, 10, optional: true, type: :string
  field :landing_page, 11, optional: true, type: :string
  field :page_url, 12, optional: true, type: :string
  field :has_negative_keyword, 13, optional: true, type: :bool
  field :has_matching_keyword, 14, optional: true, type: :bool
  field :has_negative_url, 15, optional: true, type: :bool
end
