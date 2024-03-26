defmodule Google.Ads.Googleads.V16.Common.ClickLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :city, 6, type: :string
  field :country, 7, type: :string
  field :metro, 8, type: :string
  field :most_specific, 9, type: :string, json_name: "mostSpecific"
  field :region, 10, type: :string
end