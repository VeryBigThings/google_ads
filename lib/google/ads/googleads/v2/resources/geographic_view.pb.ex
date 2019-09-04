defmodule Google.Ads.Googleads.V2.Resources.GeographicView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          location_type: atom | integer,
          country_criterion_id: Google.Protobuf.Int64Value.t() | nil
        }
  defstruct [:resource_name, :location_type, :country_criterion_id]

  field(:resource_name, 1, type: :string)

  field(:location_type, 3,
    type: Google.Ads.Googleads.V2.Enums.GeoTargetingTypeEnum.GeoTargetingType,
    enum: true
  )

  field(:country_criterion_id, 4, type: Google.Protobuf.Int64Value)
end
