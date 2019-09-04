defmodule Google.Ads.Googleads.V2.Errors.KeywordPlanAdGroupErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.KeywordPlanAdGroupErrorEnum.KeywordPlanAdGroupError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:INVALID_NAME, 2)
  field(:DUPLICATE_NAME, 3)
end
