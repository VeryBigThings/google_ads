defmodule Google.Ads.Googleads.V2.Enums.MediaTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.MediaTypeEnum.MediaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:IMAGE, 2)
  field(:ICON, 3)
  field(:MEDIA_BUNDLE, 4)
  field(:AUDIO, 5)
  field(:VIDEO, 6)
  field(:DYNAMIC_IMAGE, 7)
end
