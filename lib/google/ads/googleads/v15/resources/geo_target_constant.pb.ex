defmodule Google.Ads.Googleads.V15.Resources.GeoTargetConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 10, type: :int64, deprecated: false
  field :name, 11, type: :string, deprecated: false
  field :country_code, 12, type: :string, json_name: "countryCode", deprecated: false
  field :target_type, 13, type: :string, json_name: "targetType", deprecated: false

  field :status, 7,
    type: Google.Ads.Googleads.V15.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus,
    enum: true,
    deprecated: false

  field :canonical_name, 14, type: :string, json_name: "canonicalName", deprecated: false
  field :parent_geo_target, 9, type: :string, json_name: "parentGeoTarget", deprecated: false
end