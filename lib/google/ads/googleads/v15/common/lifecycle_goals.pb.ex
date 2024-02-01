defmodule Google.Ads.Googleads.V15.Common.LifecycleGoalValueSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, type: :double
  field :high_lifetime_value, 2, type: :double, json_name: "highLifetimeValue"
end