defmodule Google.Ads.Googleads.V2.Enums.PageOnePromotedStrategyGoalEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.PageOnePromotedStrategyGoalEnum.PageOnePromotedStrategyGoal do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:FIRST_PAGE, 2)
  field(:FIRST_PAGE_PROMOTED, 3)
end
