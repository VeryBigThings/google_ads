defmodule Google.Ads.Googleads.V11.Resources.MobileDeviceConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          manufacturer_name: String.t(),
          operating_system_name: String.t(),
          type: Google.Ads.Googleads.V11.Enums.MobileDeviceTypeEnum.MobileDeviceType.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            manufacturer_name: "",
            operating_system_name: "",
            type: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 7, type: :int64, deprecated: false
  field :name, 8, type: :string, deprecated: false
  field :manufacturer_name, 9, type: :string, json_name: "manufacturerName", deprecated: false

  field :operating_system_name, 10,
    type: :string,
    json_name: "operatingSystemName",
    deprecated: false

  field :type, 6,
    type: Google.Ads.Googleads.V11.Enums.MobileDeviceTypeEnum.MobileDeviceType,
    enum: true,
    deprecated: false
end
