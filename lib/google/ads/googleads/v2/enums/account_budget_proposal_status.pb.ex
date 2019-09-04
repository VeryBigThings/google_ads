defmodule Google.Ads.Googleads.V2.Enums.AccountBudgetProposalStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:PENDING, 2)
  field(:APPROVED_HELD, 3)
  field(:APPROVED, 4)
  field(:CANCELLED, 5)
  field(:REJECTED, 6)
end
