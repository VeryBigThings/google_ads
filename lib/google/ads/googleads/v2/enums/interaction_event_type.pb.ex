defmodule Google.Ads.Googleads.V2.Enums.InteractionEventTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.InteractionEventTypeEnum.InteractionEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CLICK, 2)
  field(:ENGAGEMENT, 3)
  field(:VIDEO_VIEW, 4)
  field(:NONE, 5)
end
