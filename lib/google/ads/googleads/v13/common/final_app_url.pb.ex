defmodule Google.Ads.Googleads.V13.Common.FinalAppUrl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :os_type, 1,
    type: Google.Ads.Googleads.V13.Enums.AppUrlOperatingSystemTypeEnum.AppUrlOperatingSystemType,
    json_name: "osType",
    enum: true

  field :url, 3, type: :string
end