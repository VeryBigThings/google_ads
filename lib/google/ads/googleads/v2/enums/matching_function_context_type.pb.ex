defmodule Google.Ads.Googleads.V2.Enums.MatchingFunctionContextTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:FEED_ITEM_ID, 2)
  field(:DEVICE_NAME, 3)
end
