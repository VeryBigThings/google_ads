defmodule Google.Ads.Googleads.V7.Resources.MobileDeviceConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 7, type: :int64
  field :name, 8, type: :string
  field :manufacturer_name, 9, type: :string
  field :operating_system_name, 10, type: :string

  field :type, 6,
    type: Google.Ads.Googleads.V7.Enums.MobileDeviceTypeEnum.MobileDeviceType,
    enum: true
end
