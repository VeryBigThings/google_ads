defmodule Google.Ads.Googleads.V2.Enums.FeedItemTargetDeviceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:MOBILE, 2)
end
