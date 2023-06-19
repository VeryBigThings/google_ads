defmodule Google.Ads.Googleads.V13.Resources.RemarketingAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 5, type: :int64, deprecated: false
  field :name, 6, type: :string

  field :tag_snippets, 4,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.TagSnippet,
    json_name: "tagSnippets",
    deprecated: false
end