defmodule Google.Ads.Googleads.V7.Resources.GeographicView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :location_type, 3,
    type: Google.Ads.Googleads.V7.Enums.GeoTargetingTypeEnum.GeoTargetingType,
    enum: true

  field :country_criterion_id, 5, type: :int64
end
