defmodule Google.Ads.Googleads.V15.Resources.AdGroupLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :ad_group, 4, type: :string, json_name: "adGroup", deprecated: false
  field :label, 5, type: :string, deprecated: false
end