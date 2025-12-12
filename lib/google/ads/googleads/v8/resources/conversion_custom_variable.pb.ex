defmodule Google.Ads.Googleads.V8.Resources.ConversionCustomVariable do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 2, optional: true, type: :int64
  field :name, 3, optional: true, type: :string
  field :tag, 4, optional: true, type: :string

  field :status, 5,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus,
    enum: true

  field :owner_customer, 6, optional: true, type: :string
end
