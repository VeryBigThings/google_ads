defmodule Google.Ads.Googleads.V2.Enums.AdGroupAdRotationModeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:OPTIMIZE, 2)
  field(:ROTATE_FOREVER, 3)
end
