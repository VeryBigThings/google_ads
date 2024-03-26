defmodule Google.Ads.Googleads.V16.Resources.LanguageConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, type: :int64, deprecated: false
  field :code, 7, type: :string, deprecated: false
  field :name, 8, type: :string, deprecated: false
  field :targetable, 9, type: :bool, deprecated: false
end