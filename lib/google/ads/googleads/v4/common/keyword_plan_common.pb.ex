defmodule Google.Ads.Googleads.V4.Common.KeywordPlanHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :avg_monthly_searches, 1, type: Google.Protobuf.Int64Value

  field :monthly_search_volumes, 6,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.MonthlySearchVolume

  field :competition, 2,
    type:
      Google.Ads.Googleads.V4.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel,
    enum: true

  field :competition_index, 3, type: Google.Protobuf.Int64Value
  field :low_top_of_page_bid_micros, 4, type: Google.Protobuf.Int64Value
  field :high_top_of_page_bid_micros, 5, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.MonthlySearchVolume do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :year, 1, type: Google.Protobuf.Int64Value
  field :month, 2, type: Google.Ads.Googleads.V4.Enums.MonthOfYearEnum.MonthOfYear, enum: true
  field :monthly_searches, 3, type: Google.Protobuf.Int64Value
end
