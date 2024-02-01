defmodule Google.Ads.Googleads.V15.Resources.CustomerSearchTermInsight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :category_label, 2, type: :string, json_name: "categoryLabel", deprecated: false
  field :id, 3, type: :int64, deprecated: false
end