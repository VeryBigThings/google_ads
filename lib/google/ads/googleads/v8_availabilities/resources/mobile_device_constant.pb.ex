defmodule Google.Ads.Googleads.V8.Resources.MobileDeviceConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          manufacturer_name: String.t(),
          operating_system_name: String.t(),
          type: Google.Ads.Googleads.V8.Enums.MobileDeviceTypeEnum.MobileDeviceType.t()
        }

  defstruct [:resource_name, :id, :name, :manufacturer_name, :operating_system_name, :type]

  field :resource_name, 1, type: :string
  field :id, 7, type: :int64
  field :name, 8, type: :string
  field :manufacturer_name, 9, type: :string
  field :operating_system_name, 10, type: :string

  field :type, 6,
    type: Google.Ads.Googleads.V8.Enums.MobileDeviceTypeEnum.MobileDeviceType,
    enum: true
end
