defmodule Google.Ads.Googleads.V8.Resources.MobileDeviceConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          manufacturer_name: Google.Protobuf.StringValue.t() | nil,
          operating_system_name: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V8.Enums.MobileDeviceTypeEnum.MobileDeviceType.t()
        }

  defstruct [:resource_name, :id, :name, :manufacturer_name, :operating_system_name, :type]

  field :resource_name, 1, type: :string
  field :id, 7, type: Google.Protobuf.Int64Value
  field :name, 8, type: Google.Protobuf.StringValue
  field :manufacturer_name, 9, type: Google.Protobuf.StringValue
  field :operating_system_name, 10, type: Google.Protobuf.StringValue

  field :type, 6,
    type: Google.Ads.Googleads.V8.Enums.MobileDeviceTypeEnum.MobileDeviceType,
    enum: true
end
