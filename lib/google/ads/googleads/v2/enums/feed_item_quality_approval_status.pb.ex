defmodule Google.Ads.Googleads.V2.Enums.FeedItemQualityApprovalStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:APPROVED, 2)
  field(:DISAPPROVED, 3)
end
