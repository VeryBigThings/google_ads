defmodule Google.Ads.Googleads.V13.Common.UrlCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :url_collection_id, 5, type: :string, json_name: "urlCollectionId"
  field :final_urls, 6, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 7, repeated: true, type: :string, json_name: "finalMobileUrls"
  field :tracking_url_template, 8, type: :string, json_name: "trackingUrlTemplate"
end