defmodule Google.Ads.Googleads.V2.Common.KeywordPlanHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          avg_monthly_searches: Google.Protobuf.Int64Value.t() | nil,
          competition: atom | integer
        }
  defstruct [:avg_monthly_searches, :competition]

  field(:avg_monthly_searches, 1, type: Google.Protobuf.Int64Value)

  field(:competition, 2,
    type:
      Google.Ads.Googleads.V2.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel,
    enum: true
  )
end
