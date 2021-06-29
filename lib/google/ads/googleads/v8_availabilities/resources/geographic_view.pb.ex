defmodule Google.Ads.Googleads.V8.Resources.GeographicView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          location_type: Google.Ads.Googleads.V8.Enums.GeoTargetingTypeEnum.GeoTargetingType.t(),
          country_criterion_id: integer
        }

  defstruct [:resource_name, :location_type, :country_criterion_id]

  field :resource_name, 1, type: :string

  field :location_type, 3,
    type: Google.Ads.Googleads.V8.Enums.GeoTargetingTypeEnum.GeoTargetingType,
    enum: true

  field :country_criterion_id, 5, type: :int64
end
