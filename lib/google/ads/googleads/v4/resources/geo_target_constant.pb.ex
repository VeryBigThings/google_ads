defmodule Google.Ads.Googleads.V4.Resources.GeoTargetConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue
  field :country_code, 5, type: Google.Protobuf.StringValue
  field :target_type, 6, type: Google.Protobuf.StringValue

  field :status, 7,
    type: Google.Ads.Googleads.V4.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus,
    enum: true

  field :canonical_name, 8, type: Google.Protobuf.StringValue
end
