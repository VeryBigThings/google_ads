defmodule Google.Ads.Googleads.V2.Enums.DeviceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.DeviceEnum.Device do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:MOBILE, 2)
  field(:TABLET, 3)
  field(:DESKTOP, 4)
  field(:CONNECTED_TV, 6)
  field(:OTHER, 5)
end
