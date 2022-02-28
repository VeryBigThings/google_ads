defmodule Google.Ads.Googleads.V10.Resources.SharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          type: Google.Ads.Googleads.V10.Enums.SharedSetTypeEnum.SharedSetType.t(),
          name: String.t(),
          status: Google.Ads.Googleads.V10.Enums.SharedSetStatusEnum.SharedSetStatus.t(),
          member_count: integer,
          reference_count: integer
        }

  defstruct resource_name: "",
            id: 0,
            type: :UNSPECIFIED,
            name: "",
            status: :UNSPECIFIED,
            member_count: 0,
            reference_count: 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 8, type: :int64, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V10.Enums.SharedSetTypeEnum.SharedSetType,
    enum: true,
    deprecated: false

  field :name, 9, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V10.Enums.SharedSetStatusEnum.SharedSetStatus,
    enum: true,
    deprecated: false

  field :member_count, 10, type: :int64, json_name: "memberCount", deprecated: false
  field :reference_count, 11, type: :int64, json_name: "referenceCount", deprecated: false
end
