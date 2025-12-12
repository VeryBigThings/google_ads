defmodule Google.Ads.Googleads.V8.Resources.OperatingSystemVersionConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 7, optional: true, type: :int64
  field :name, 8, optional: true, type: :string
  field :os_major_version, 9, optional: true, type: :int32
  field :os_minor_version, 10, optional: true, type: :int32

  field :operator_type, 6,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType,
    enum: true
end
