defmodule Google.Ads.Googleads.V13.Resources.MobileDeviceConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 7, type: :int64, deprecated: false
  field :name, 8, type: :string, deprecated: false
  field :manufacturer_name, 9, type: :string, json_name: "manufacturerName", deprecated: false

  field :operating_system_name, 10,
    type: :string,
    json_name: "operatingSystemName",
    deprecated: false

  field :type, 6,
    type: Google.Ads.Googleads.V13.Enums.MobileDeviceTypeEnum.MobileDeviceType,
    enum: true,
    deprecated: false
end