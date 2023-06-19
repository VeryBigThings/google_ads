defmodule Google.Ads.Googleads.V13.Resources.LandingPageView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :unexpanded_final_url, 3,
    type: :string,
    json_name: "unexpandedFinalUrl",
    deprecated: false
end