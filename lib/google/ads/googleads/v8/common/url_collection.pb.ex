defmodule Google.Ads.Googleads.V8.Common.UrlCollection do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :url_collection_id, 5, optional: true, type: :string
  field :final_urls, 6, repeated: true, type: :string
  field :final_mobile_urls, 7, repeated: true, type: :string
  field :tracking_url_template, 8, optional: true, type: :string
end
