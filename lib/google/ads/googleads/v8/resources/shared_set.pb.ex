defmodule Google.Ads.Googleads.V8.Resources.SharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          type: Google.Ads.Googleads.V8.Enums.SharedSetTypeEnum.SharedSetType.t(),
          name: Google.Protobuf.StringValue.t() | nil,
          status: Google.Ads.Googleads.V8.Enums.SharedSetStatusEnum.SharedSetStatus.t(),
          member_count: Google.Protobuf.Int64Value.t() | nil,
          reference_count: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:resource_name, :id, :type, :name, :status, :member_count, :reference_count]

  field :resource_name, 1, type: :string
  field :id, 8, type: Google.Protobuf.Int64Value
  field :type, 3, type: Google.Ads.Googleads.V8.Enums.SharedSetTypeEnum.SharedSetType, enum: true
  field :name, 9, type: Google.Protobuf.StringValue

  field :status, 5,
    type: Google.Ads.Googleads.V8.Enums.SharedSetStatusEnum.SharedSetStatus,
    enum: true

  field :member_count, 10, type: Google.Protobuf.Int64Value
  field :reference_count, 11, type: Google.Protobuf.Int64Value
end
