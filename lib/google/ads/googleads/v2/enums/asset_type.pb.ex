defmodule Google.Ads.Googleads.V2.Enums.AssetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AssetTypeEnum.AssetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:YOUTUBE_VIDEO, 2)
  field(:MEDIA_BUNDLE, 3)
  field(:IMAGE, 4)
  field(:TEXT, 5)
end
