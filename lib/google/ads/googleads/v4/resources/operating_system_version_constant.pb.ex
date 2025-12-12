defmodule Google.Ads.Googleads.V4.Resources.OperatingSystemVersionConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :os_major_version, 4, type: Google.Protobuf.Int32Value
  field :os_minor_version, 5, type: Google.Protobuf.Int32Value

  field :operator_type, 6,
    type:
      Google.Ads.Googleads.V4.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType,
    enum: true
end
