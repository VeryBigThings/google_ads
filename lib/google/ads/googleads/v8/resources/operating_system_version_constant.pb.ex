defmodule Google.Ads.Googleads.V8.Resources.OperatingSystemVersionConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          os_major_version: integer,
          os_minor_version: integer,
          operator_type:
            Google.Ads.Googleads.V8.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType.t()
        }

  defstruct [:resource_name, :id, :name, :os_major_version, :os_minor_version, :operator_type]

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
