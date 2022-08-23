defmodule Google.Ads.Googleads.V11.Resources.GeoTargetConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          country_code: String.t(),
          target_type: String.t(),
          status:
            Google.Ads.Googleads.V11.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus.t(),
          canonical_name: String.t(),
          parent_geo_target: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            country_code: "",
            target_type: "",
            status: :UNSPECIFIED,
            canonical_name: "",
            parent_geo_target: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 10, type: :int64, deprecated: false
  field :name, 11, type: :string, deprecated: false
  field :country_code, 12, type: :string, json_name: "countryCode", deprecated: false
  field :target_type, 13, type: :string, json_name: "targetType", deprecated: false

  field :status, 7,
    type: Google.Ads.Googleads.V11.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus,
    enum: true,
    deprecated: false

  field :canonical_name, 14, type: :string, json_name: "canonicalName", deprecated: false
  field :parent_geo_target, 9, type: :string, json_name: "parentGeoTarget", deprecated: false
end
