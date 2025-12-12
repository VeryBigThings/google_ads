defmodule Google.Ads.Googleads.V8.Resources.SharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 8, optional: true, type: :int64

  field :type, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.SharedSetTypeEnum.SharedSetType,
    enum: true

  field :name, 9, optional: true, type: :string

  field :status, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.SharedSetStatusEnum.SharedSetStatus,
    enum: true

  field :member_count, 10, optional: true, type: :int64
  field :reference_count, 11, optional: true, type: :int64
end
