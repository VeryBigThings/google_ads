defmodule Google.Ads.Googleads.V11.Resources.GeographicView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          location_type: Google.Ads.Googleads.V11.Enums.GeoTargetingTypeEnum.GeoTargetingType.t(),
          country_criterion_id: integer
        }

  defstruct resource_name: "",
            location_type: :UNSPECIFIED,
            country_criterion_id: 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :location_type, 3,
    type: Google.Ads.Googleads.V11.Enums.GeoTargetingTypeEnum.GeoTargetingType,
    json_name: "locationType",
    enum: true,
    deprecated: false

  field :country_criterion_id, 5, type: :int64, json_name: "countryCriterionId", deprecated: false
end
