defmodule Google.Ads.Googleads.V7.Common.UrlCollection do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :url_collection_id, 5, type: :string
  field :final_urls, 6, repeated: true, type: :string
  field :final_mobile_urls, 7, repeated: true, type: :string
  field :tracking_url_template, 8, type: :string
end
