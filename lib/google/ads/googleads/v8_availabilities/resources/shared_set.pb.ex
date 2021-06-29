defmodule Google.Ads.Googleads.V8Availabilities.Resources.SharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          type: Google.Ads.Googleads.V8Availabilities.Enums.SharedSetTypeEnum.SharedSetType.t(),
          name: String.t(),
          status: Google.Ads.Googleads.V8Availabilities.Enums.SharedSetStatusEnum.SharedSetStatus.t(),
          member_count: integer,
          reference_count: integer
        }

  defstruct [:resource_name, :id, :type, :name, :status, :member_count, :reference_count]

  field :resource_name, 1, type: :string
  field :id, 8, type: :int64
  field :type, 3, type: Google.Ads.Googleads.V8Availabilities.Enums.SharedSetTypeEnum.SharedSetType, enum: true
  field :name, 9, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.SharedSetStatusEnum.SharedSetStatus,
    enum: true

  field :member_count, 10, type: :int64
  field :reference_count, 11, type: :int64
end
