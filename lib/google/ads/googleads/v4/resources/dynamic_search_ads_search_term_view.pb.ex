defmodule Google.Ads.Googleads.V4.Resources.DynamicSearchAdsSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :search_term, 2, type: Google.Protobuf.StringValue
  field :headline, 3, type: Google.Protobuf.StringValue
  field :landing_page, 4, type: Google.Protobuf.StringValue
  field :page_url, 5, type: Google.Protobuf.StringValue
  field :has_negative_keyword, 6, type: Google.Protobuf.BoolValue
  field :has_matching_keyword, 7, type: Google.Protobuf.BoolValue
  field :has_negative_url, 8, type: Google.Protobuf.BoolValue
end
