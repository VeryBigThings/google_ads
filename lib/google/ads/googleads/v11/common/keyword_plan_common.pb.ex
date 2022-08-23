defmodule Google.Ads.Googleads.V11.Common.KeywordPlanHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          avg_monthly_searches: integer,
          monthly_search_volumes: [Google.Ads.Googleads.V11.Common.MonthlySearchVolume.t()],
          competition:
            Google.Ads.Googleads.V11.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel.t(),
          competition_index: integer,
          low_top_of_page_bid_micros: integer,
          high_top_of_page_bid_micros: integer,
          average_cpc_micros: integer
        }

  defstruct avg_monthly_searches: 0,
            monthly_search_volumes: [],
            competition: :UNSPECIFIED,
            competition_index: 0,
            low_top_of_page_bid_micros: 0,
            high_top_of_page_bid_micros: 0,
            average_cpc_micros: 0

  field :avg_monthly_searches, 7, type: :int64, json_name: "avgMonthlySearches"

  field :monthly_search_volumes, 6,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.MonthlySearchVolume,
    json_name: "monthlySearchVolumes"

  field :competition, 2,
    type:
      Google.Ads.Googleads.V11.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel,
    enum: true

  field :competition_index, 8, type: :int64, json_name: "competitionIndex"
  field :low_top_of_page_bid_micros, 9, type: :int64, json_name: "lowTopOfPageBidMicros"
  field :high_top_of_page_bid_micros, 10, type: :int64, json_name: "highTopOfPageBidMicros"
  field :average_cpc_micros, 11, type: :int64, json_name: "averageCpcMicros"
end
defmodule Google.Ads.Googleads.V11.Common.HistoricalMetricsOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          year_month_range: Google.Ads.Googleads.V11.Common.YearMonthRange.t() | nil,
          include_average_cpc: boolean
        }

  defstruct year_month_range: nil,
            include_average_cpc: false

  field :year_month_range, 1,
    type: Google.Ads.Googleads.V11.Common.YearMonthRange,
    json_name: "yearMonthRange"

  field :include_average_cpc, 2, type: :bool, json_name: "includeAverageCpc"
end
defmodule Google.Ads.Googleads.V11.Common.MonthlySearchVolume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          year: integer,
          month: Google.Ads.Googleads.V11.Enums.MonthOfYearEnum.MonthOfYear.t(),
          monthly_searches: integer
        }

  defstruct year: 0,
            month: :UNSPECIFIED,
            monthly_searches: 0

  field :year, 4, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V11.Enums.MonthOfYearEnum.MonthOfYear, enum: true
  field :monthly_searches, 5, type: :int64, json_name: "monthlySearches"
end
defmodule Google.Ads.Googleads.V11.Common.KeywordPlanAggregateMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregate_metric_types: [
            Google.Ads.Googleads.V11.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType.t()
          ]
        }

  defstruct aggregate_metric_types: []

  field :aggregate_metric_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V11.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType,
    json_name: "aggregateMetricTypes",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Common.KeywordPlanAggregateMetricResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device_searches: [Google.Ads.Googleads.V11.Common.KeywordPlanDeviceSearches.t()]
        }

  defstruct device_searches: []

  field :device_searches, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.KeywordPlanDeviceSearches,
    json_name: "deviceSearches"
end
defmodule Google.Ads.Googleads.V11.Common.KeywordPlanDeviceSearches do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          device: Google.Ads.Googleads.V11.Enums.DeviceEnum.Device.t(),
          search_count: integer
        }

  defstruct device: :UNSPECIFIED,
            search_count: 0

  field :device, 1, type: Google.Ads.Googleads.V11.Enums.DeviceEnum.Device, enum: true
  field :search_count, 2, type: :int64, json_name: "searchCount"
end
defmodule Google.Ads.Googleads.V11.Common.KeywordAnnotations do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          concepts: [Google.Ads.Googleads.V11.Common.KeywordConcept.t()]
        }

  defstruct concepts: []

  field :concepts, 1, repeated: true, type: Google.Ads.Googleads.V11.Common.KeywordConcept
end
defmodule Google.Ads.Googleads.V11.Common.KeywordConcept do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          concept_group: Google.Ads.Googleads.V11.Common.ConceptGroup.t() | nil
        }

  defstruct name: "",
            concept_group: nil

  field :name, 1, type: :string

  field :concept_group, 2,
    type: Google.Ads.Googleads.V11.Common.ConceptGroup,
    json_name: "conceptGroup"
end
defmodule Google.Ads.Googleads.V11.Common.ConceptGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type:
            Google.Ads.Googleads.V11.Enums.KeywordPlanConceptGroupTypeEnum.KeywordPlanConceptGroupType.t()
        }

  defstruct name: "",
            type: :UNSPECIFIED

  field :name, 1, type: :string

  field :type, 2,
    type:
      Google.Ads.Googleads.V11.Enums.KeywordPlanConceptGroupTypeEnum.KeywordPlanConceptGroupType,
    enum: true
end
