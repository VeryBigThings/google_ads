defmodule Google.Ads.Googleads.V2.Enums.CriterionCategoryChannelAvailabilityModeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CriterionCategoryChannelAvailabilityModeEnum.CriterionCategoryChannelAvailabilityMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ALL_CHANNELS, 2)
  field(:CHANNEL_TYPE_AND_ALL_SUBTYPES, 3)
  field(:CHANNEL_TYPE_AND_SUBSET_SUBTYPES, 4)
end
