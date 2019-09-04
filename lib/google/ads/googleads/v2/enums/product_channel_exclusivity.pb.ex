defmodule Google.Ads.Googleads.V2.Enums.ProductChannelExclusivityEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.ProductChannelExclusivityEnum.ProductChannelExclusivity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:SINGLE_CHANNEL, 2)
  field(:MULTI_CHANNEL, 3)
end
