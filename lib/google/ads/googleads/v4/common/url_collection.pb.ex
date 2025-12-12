defmodule Google.Ads.Googleads.V4.Common.UrlCollection do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :url_collection_id, 1, type: Google.Protobuf.StringValue
  field :final_urls, 2, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 3, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 4, type: Google.Protobuf.StringValue
end
