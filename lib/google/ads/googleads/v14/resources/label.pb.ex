defmodule Google.Ads.Googleads.V14.Resources.Label do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, type: :int64, deprecated: false
  field :name, 7, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V14.Enums.LabelStatusEnum.LabelStatus,
    enum: true,
    deprecated: false

  field :text_label, 5, type: Google.Ads.Googleads.V14.Common.TextLabel, json_name: "textLabel"
end