defmodule Google.Ads.Googleads.V2.Errors.KeywordPlanCampaignErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.KeywordPlanCampaignErrorEnum.KeywordPlanCampaignError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:INVALID_NAME, 2)
  field(:INVALID_LANGUAGES, 3)
  field(:INVALID_GEOS, 4)
  field(:DUPLICATE_NAME, 5)
  field(:MAX_GEOS_EXCEEDED, 6)
end
