defmodule Google.Ads.Googleads.V2.Enums.FrequencyCapTimeUnitEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:DAY, 2)
  field(:WEEK, 3)
  field(:MONTH, 4)
end
