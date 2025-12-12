defmodule Google.Ads.Googleads.V4.Resources.GeographicView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :location_type, 3,
    type: Google.Ads.Googleads.V4.Enums.GeoTargetingTypeEnum.GeoTargetingType,
    enum: true

  field :country_criterion_id, 4, type: Google.Protobuf.Int64Value
end
