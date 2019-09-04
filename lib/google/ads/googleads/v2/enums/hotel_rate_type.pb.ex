defmodule Google.Ads.Googleads.V2.Enums.HotelRateTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.HotelRateTypeEnum.HotelRateType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:UNAVAILABLE, 2)
  field(:PUBLIC_RATE, 3)
  field(:QUALIFIED_RATE, 4)
  field(:PRIVATE_RATE, 5)
end
