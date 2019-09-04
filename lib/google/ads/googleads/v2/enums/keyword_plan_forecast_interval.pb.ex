defmodule Google.Ads.Googleads.V2.Enums.KeywordPlanForecastIntervalEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:NEXT_WEEK, 3)
  field(:NEXT_MONTH, 4)
  field(:NEXT_QUARTER, 5)
end
