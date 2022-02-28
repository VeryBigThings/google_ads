defmodule Google.Ads.Googleads.V10.Resources.OperatingSystemVersionConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          os_major_version: integer,
          os_minor_version: integer,
          operator_type:
            Google.Ads.Googleads.V10.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            os_major_version: 0,
            os_minor_version: 0,
            operator_type: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 7, type: :int64, deprecated: false
  field :name, 8, type: :string, deprecated: false
  field :os_major_version, 9, type: :int32, json_name: "osMajorVersion", deprecated: false
  field :os_minor_version, 10, type: :int32, json_name: "osMinorVersion", deprecated: false

  field :operator_type, 6,
    type:
      Google.Ads.Googleads.V10.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType,
    json_name: "operatorType",
    enum: true,
    deprecated: false
end
