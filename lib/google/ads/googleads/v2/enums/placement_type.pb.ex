defmodule Google.Ads.Googleads.V2.Enums.PlacementTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.PlacementTypeEnum.PlacementType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:WEBSITE, 2)
  field(:MOBILE_APP_CATEGORY, 3)
  field(:MOBILE_APPLICATION, 4)
  field(:YOUTUBE_VIDEO, 5)
  field(:YOUTUBE_CHANNEL, 6)
end
