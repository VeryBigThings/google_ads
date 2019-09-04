defmodule Google.Ads.Googleads.V2.Enums.AccountBudgetStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AccountBudgetStatusEnum.AccountBudgetStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:PENDING, 2)
  field(:APPROVED, 3)
  field(:CANCELLED, 4)
end
