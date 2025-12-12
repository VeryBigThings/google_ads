defmodule Google.Ads.Googleads.V8Availabilities.Resources.OperatingSystemVersionConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :id, 7, type: :int64
  field :name, 8, type: :string
  field :os_major_version, 9, type: :int32
  field :os_minor_version, 10, type: :int32

  field :operator_type, 6,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType,
    enum: true
end
