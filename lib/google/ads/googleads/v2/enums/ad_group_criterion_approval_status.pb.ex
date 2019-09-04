defmodule Google.Ads.Googleads.V2.Enums.AdGroupCriterionApprovalStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:APPROVED, 2)
  field(:DISAPPROVED, 3)
  field(:PENDING_REVIEW, 4)
  field(:UNDER_REVIEW, 5)
end
