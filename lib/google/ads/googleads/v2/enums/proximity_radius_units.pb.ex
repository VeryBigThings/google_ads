defmodule Google.Ads.Googleads.V2.Enums.ProximityRadiusUnitsEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ProximityRadiusUnitsEnum.ProximityRadiusUnits do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:MILES, 2)
  field(:KILOMETERS, 3)
end
