defmodule Google.Ads.Googleads.V8.Common.KeywordPlanHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :avg_monthly_searches, 7, optional: true, type: :int64

  field :monthly_search_volumes, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.MonthlySearchVolume

  field :competition, 2,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel,
    enum: true

  field :competition_index, 8, optional: true, type: :int64
  field :low_top_of_page_bid_micros, 9, optional: true, type: :int64
  field :high_top_of_page_bid_micros, 10, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.HistoricalMetricsOptions do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :year_month_range, 1, optional: true, type: Google.Ads.Googleads.V8.Common.YearMonthRange
end

defmodule Google.Ads.Googleads.V8.Common.MonthlySearchVolume do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :year, 4, optional: true, type: :int64

  field :month, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true

  field :monthly_searches, 5, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.KeywordPlanAggregateMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :aggregate_metric_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.KeywordPlanAggregateMetricResults do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :device_searches, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.KeywordPlanDeviceSearches
end

defmodule Google.Ads.Googleads.V8.Common.KeywordPlanDeviceSearches do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :device, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device,
    enum: true

  field :search_count, 2, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.KeywordAnnotations do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :concepts, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.KeywordConcept
end

defmodule Google.Ads.Googleads.V8.Common.KeywordConcept do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :name, 1, optional: true, type: :string
  field :concept_group, 2, optional: true, type: Google.Ads.Googleads.V8.Common.ConceptGroup
end

defmodule Google.Ads.Googleads.V8.Common.ConceptGroup do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :name, 1, optional: true, type: :string

  field :type, 2,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.KeywordPlanConceptGroupTypeEnum.KeywordPlanConceptGroupType,
    enum: true
end
