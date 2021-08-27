defmodule Google.Ads.Googleads.V8.Common.KeywordPlanHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          avg_monthly_searches: integer,
          monthly_search_volumes: [Google.Ads.Googleads.V8.Common.MonthlySearchVolume.t()],
          competition:
            Google.Ads.Googleads.V8.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel.t(),
          competition_index: integer,
          low_top_of_page_bid_micros: integer,
          high_top_of_page_bid_micros: integer
        }
  defstruct [
    :avg_monthly_searches,
    :monthly_search_volumes,
    :competition,
    :competition_index,
    :low_top_of_page_bid_micros,
    :high_top_of_page_bid_micros
  ]

  field :avg_monthly_searches, 7, type: :int64

  field :monthly_search_volumes, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.MonthlySearchVolume

  field :competition, 2,
    type:
      Google.Ads.Googleads.V8.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel,
    enum: true

  field :competition_index, 8, type: :int64
  field :low_top_of_page_bid_micros, 9, type: :int64
  field :high_top_of_page_bid_micros, 10, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.HistoricalMetricsOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          year_month_range: Google.Ads.Googleads.V8.Common.YearMonthRange.t() | nil
        }
  defstruct [:year_month_range]

  field :year_month_range, 1, type: Google.Ads.Googleads.V8.Common.YearMonthRange
end

defmodule Google.Ads.Googleads.V8.Common.MonthlySearchVolume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          year: integer,
          month: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear.t(),
          monthly_searches: integer
        }
  defstruct [:year, :month, :monthly_searches]

  field :year, 4, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear, enum: true
  field :monthly_searches, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.KeywordPlanAggregateMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregate_metric_types: [
            [
              Google.Ads.Googleads.V8.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType.t()
            ]
          ]
        }
  defstruct [:aggregate_metric_types]

  field :aggregate_metric_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V8.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.KeywordPlanAggregateMetricResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_searches: [Google.Ads.Googleads.V8.Common.KeywordPlanDeviceSearches.t()]
        }
  defstruct [:device_searches]

  field :device_searches, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.KeywordPlanDeviceSearches
end

defmodule Google.Ads.Googleads.V8.Common.KeywordPlanDeviceSearches do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device.t(),
          search_count: integer
        }
  defstruct [:device, :search_count]

  field :device, 1, type: Google.Ads.Googleads.V8.Enums.DeviceEnum.Device, enum: true
  field :search_count, 2, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.KeywordAnnotations do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          concepts: [Google.Ads.Googleads.V8.Common.KeywordConcept.t()]
        }
  defstruct [:concepts]

  field :concepts, 1, repeated: true, type: Google.Ads.Googleads.V8.Common.KeywordConcept
end

defmodule Google.Ads.Googleads.V8.Common.KeywordConcept do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          concept_group: Google.Ads.Googleads.V8.Common.ConceptGroup.t() | nil
        }
  defstruct [:name, :concept_group]

  field :name, 1, type: :string
  field :concept_group, 2, type: Google.Ads.Googleads.V8.Common.ConceptGroup
end

defmodule Google.Ads.Googleads.V8.Common.ConceptGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type:
            Google.Ads.Googleads.V8.Enums.KeywordPlanConceptGroupTypeEnum.KeywordPlanConceptGroupType.t()
        }
  defstruct [:name, :type]

  field :name, 1, type: :string

  field :type, 2,
    type:
      Google.Ads.Googleads.V8.Enums.KeywordPlanConceptGroupTypeEnum.KeywordPlanConceptGroupType,
    enum: true
end
