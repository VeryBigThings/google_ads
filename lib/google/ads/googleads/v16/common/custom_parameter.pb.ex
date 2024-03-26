defmodule Google.Ads.Googleads.V16.Common.CustomParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 3, type: :string
  field :value, 4, type: :string
end