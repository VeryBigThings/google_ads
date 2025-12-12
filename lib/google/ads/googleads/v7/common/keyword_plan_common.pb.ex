defmodule Google.Ads.Googleads.V7.Common.KeywordPlanHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :avg_monthly_searches, 7, type: :int64

  field :monthly_search_volumes, 6,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.MonthlySearchVolume

  field :competition, 2,
    type:
      Google.Ads.Googleads.V7.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel,
    enum: true

  field :competition_index, 8, type: :int64
  field :low_top_of_page_bid_micros, 9, type: :int64
  field :high_top_of_page_bid_micros, 10, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.HistoricalMetricsOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :year_month_range, 1, type: Google.Ads.Googleads.V7.Common.YearMonthRange
end

defmodule Google.Ads.Googleads.V7.Common.MonthlySearchVolume do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :year, 4, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V7.Enums.MonthOfYearEnum.MonthOfYear, enum: true
  field :monthly_searches, 5, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.KeywordPlanAggregateMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :aggregate_metric_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V7.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Common.KeywordPlanAggregateMetricResults do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :device_searches, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.KeywordPlanDeviceSearches
end

defmodule Google.Ads.Googleads.V7.Common.KeywordPlanDeviceSearches do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :device, 1, type: Google.Ads.Googleads.V7.Enums.DeviceEnum.Device, enum: true
  field :search_count, 2, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.KeywordAnnotations do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :concepts, 1, repeated: true, type: Google.Ads.Googleads.V7.Common.KeywordConcept
end

defmodule Google.Ads.Googleads.V7.Common.KeywordConcept do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :name, 1, type: :string
  field :concept_group, 2, type: Google.Ads.Googleads.V7.Common.ConceptGroup
end

defmodule Google.Ads.Googleads.V7.Common.ConceptGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :name, 1, type: :string

  field :type, 2,
    type:
      Google.Ads.Googleads.V7.Enums.KeywordPlanConceptGroupTypeEnum.KeywordPlanConceptGroupType,
    enum: true
end
