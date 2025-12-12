defmodule Google.Ads.Googleads.V8.Resources.GeographicView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :location_type, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.GeoTargetingTypeEnum.GeoTargetingType,
    enum: true

  field :country_criterion_id, 5, optional: true, type: :int64
end
