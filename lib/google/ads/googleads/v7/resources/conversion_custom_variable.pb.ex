defmodule Google.Ads.Googleads.V7.Resources.ConversionCustomVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: :int64
  field :name, 3, type: :string
  field :tag, 4, type: :string

  field :status, 5,
    type:
      Google.Ads.Googleads.V7.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus,
    enum: true

  field :owner_customer, 6, type: :string
end
