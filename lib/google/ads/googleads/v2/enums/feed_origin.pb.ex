defmodule Google.Ads.Googleads.V2.Enums.FeedOriginEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.FeedOriginEnum.FeedOrigin do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:USER, 2)
  field(:GOOGLE, 3)
end
