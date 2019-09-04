defmodule Google.Ads.Googleads.V2.Enums.PolicyReviewStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.PolicyReviewStatusEnum.PolicyReviewStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:REVIEW_IN_PROGRESS, 2)
  field(:REVIEWED, 3)
  field(:UNDER_APPEAL, 4)
end
