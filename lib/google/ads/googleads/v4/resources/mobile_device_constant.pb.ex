defmodule Google.Ads.Googleads.V4.Resources.MobileDeviceConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :manufacturer_name, 4, type: Google.Protobuf.StringValue
  field :operating_system_name, 5, type: Google.Protobuf.StringValue

  field :type, 6,
    type: Google.Ads.Googleads.V4.Enums.MobileDeviceTypeEnum.MobileDeviceType,
    enum: true
end
