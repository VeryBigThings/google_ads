defmodule Google.Ads.Googleads.V2.Enums.PolicyTopicEntryTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:PROHIBITED, 2)
  field(:LIMITED, 4)
  field(:FULLY_LIMITED, 8)
  field(:DESCRIPTIVE, 5)
  field(:BROADENING, 6)
  field(:AREA_OF_INTEREST_ONLY, 7)
end
