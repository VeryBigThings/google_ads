defmodule Google.Ads.Googleads.V8.Resources.MobileDeviceConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 7, optional: true, type: :int64
  field :name, 8, optional: true, type: :string
  field :manufacturer_name, 9, optional: true, type: :string
  field :operating_system_name, 10, optional: true, type: :string

  field :type, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MobileDeviceTypeEnum.MobileDeviceType,
    enum: true
end
