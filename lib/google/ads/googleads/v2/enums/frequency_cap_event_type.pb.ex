defmodule Google.Ads.Googleads.V2.Enums.FrequencyCapEventTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.FrequencyCapEventTypeEnum.FrequencyCapEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:IMPRESSION, 2)
  field(:VIDEO_VIEW, 3)
end
