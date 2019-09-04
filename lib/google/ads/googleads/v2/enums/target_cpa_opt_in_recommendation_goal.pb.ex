defmodule Google.Ads.Googleads.V2.Enums.TargetCpaOptInRecommendationGoalEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.TargetCpaOptInRecommendationGoalEnum.TargetCpaOptInRecommendationGoal do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:SAME_COST, 2)
  field(:SAME_CONVERSIONS, 3)
  field(:SAME_CPA, 4)
  field(:CLOSEST_CPA, 5)
end
