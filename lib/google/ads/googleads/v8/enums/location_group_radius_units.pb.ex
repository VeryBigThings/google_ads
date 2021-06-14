defmodule Google.Ads.Googleads.V8.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :METERS | :MILES | :MILLI_MILES

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :METERS, 2

  field :MILES, 3

  field :MILLI_MILES, 4
end

defmodule Google.Ads.Googleads.V8.Enums.LocationGroupRadiusUnitsEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
