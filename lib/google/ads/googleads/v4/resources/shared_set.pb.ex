defmodule Google.Ads.Googleads.V4.Resources.SharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :type, 3, type: Google.Ads.Googleads.V4.Enums.SharedSetTypeEnum.SharedSetType, enum: true
  field :name, 4, type: Google.Protobuf.StringValue

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.SharedSetStatusEnum.SharedSetStatus,
    enum: true

  field :member_count, 6, type: Google.Protobuf.Int64Value
  field :reference_count, 7, type: Google.Protobuf.Int64Value
end
