defmodule Google.Ads.Googleads.V2.Enums.BudgetPeriodEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.BudgetPeriodEnum.BudgetPeriod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:DAILY, 2)
  field(:CUSTOM, 3)
  field(:FIXED_DAILY, 4)
end
