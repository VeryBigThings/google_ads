defmodule Google.Ads.Googleads.V8.Resources.GeoTargetConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          target_type: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V8.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus.t(),
          canonical_name: Google.Protobuf.StringValue.t() | nil,
          parent_geo_target: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :resource_name,
    :id,
    :name,
    :country_code,
    :target_type,
    :status,
    :canonical_name,
    :parent_geo_target
  ]

  field :resource_name, 1, type: :string
  field :id, 10, type: Google.Protobuf.Int64Value
  field :name, 11, type: Google.Protobuf.StringValue
  field :country_code, 12, type: Google.Protobuf.StringValue
  field :target_type, 13, type: Google.Protobuf.StringValue

  field :status, 7,
    type: Google.Ads.Googleads.V8.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus,
    enum: true

  field :canonical_name, 14, type: Google.Protobuf.StringValue
  field :parent_geo_target, 9, type: Google.Protobuf.StringValue
end
