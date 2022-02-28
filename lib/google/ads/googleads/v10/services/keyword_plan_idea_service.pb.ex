defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seed:
            {:keyword_and_url_seed, Google.Ads.Googleads.V10.Services.KeywordAndUrlSeed.t() | nil}
            | {:keyword_seed, Google.Ads.Googleads.V10.Services.KeywordSeed.t() | nil}
            | {:url_seed, Google.Ads.Googleads.V10.Services.UrlSeed.t() | nil}
            | {:site_seed, Google.Ads.Googleads.V10.Services.SiteSeed.t() | nil},
          customer_id: String.t(),
          language: String.t(),
          geo_target_constants: [String.t()],
          include_adult_keywords: boolean,
          page_token: String.t(),
          page_size: integer,
          keyword_plan_network:
            Google.Ads.Googleads.V10.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork.t(),
          keyword_annotation: [
            Google.Ads.Googleads.V10.Enums.KeywordPlanKeywordAnnotationEnum.KeywordPlanKeywordAnnotation.t()
          ],
          aggregate_metrics:
            Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetrics.t() | nil,
          historical_metrics_options:
            Google.Ads.Googleads.V10.Common.HistoricalMetricsOptions.t() | nil
        }

  defstruct seed: nil,
            customer_id: "",
            language: "",
            geo_target_constants: [],
            include_adult_keywords: false,
            page_token: "",
            page_size: 0,
            keyword_plan_network: :UNSPECIFIED,
            keyword_annotation: [],
            aggregate_metrics: nil,
            historical_metrics_options: nil

  oneof :seed, 0

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :language, 14, type: :string
  field :geo_target_constants, 15, repeated: true, type: :string, json_name: "geoTargetConstants"
  field :include_adult_keywords, 10, type: :bool, json_name: "includeAdultKeywords"
  field :page_token, 12, type: :string, json_name: "pageToken"
  field :page_size, 13, type: :int32, json_name: "pageSize"

  field :keyword_plan_network, 9,
    type: Google.Ads.Googleads.V10.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    json_name: "keywordPlanNetwork",
    enum: true

  field :keyword_annotation, 17,
    repeated: true,
    type:
      Google.Ads.Googleads.V10.Enums.KeywordPlanKeywordAnnotationEnum.KeywordPlanKeywordAnnotation,
    json_name: "keywordAnnotation",
    enum: true

  field :aggregate_metrics, 16,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetrics,
    json_name: "aggregateMetrics"

  field :historical_metrics_options, 18,
    type: Google.Ads.Googleads.V10.Common.HistoricalMetricsOptions,
    json_name: "historicalMetricsOptions"

  field :keyword_and_url_seed, 2,
    type: Google.Ads.Googleads.V10.Services.KeywordAndUrlSeed,
    json_name: "keywordAndUrlSeed",
    oneof: 0

  field :keyword_seed, 3,
    type: Google.Ads.Googleads.V10.Services.KeywordSeed,
    json_name: "keywordSeed",
    oneof: 0

  field :url_seed, 5,
    type: Google.Ads.Googleads.V10.Services.UrlSeed,
    json_name: "urlSeed",
    oneof: 0

  field :site_seed, 11,
    type: Google.Ads.Googleads.V10.Services.SiteSeed,
    json_name: "siteSeed",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Services.KeywordAndUrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          keywords: [String.t()]
        }

  defstruct url: "",
            keywords: []

  field :url, 3, type: :string
  field :keywords, 4, repeated: true, type: :string
end
defmodule Google.Ads.Googleads.V10.Services.KeywordSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keywords: [String.t()]
        }

  defstruct keywords: []

  field :keywords, 2, repeated: true, type: :string
end
defmodule Google.Ads.Googleads.V10.Services.SiteSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          site: String.t()
        }

  defstruct site: ""

  field :site, 2, type: :string
end
defmodule Google.Ads.Googleads.V10.Services.UrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t()
        }

  defstruct url: ""

  field :url, 2, type: :string
end
defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResult.t()],
          aggregate_metric_results:
            Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetricResults.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct results: [],
            aggregate_metric_results: nil,
            next_page_token: "",
            total_size: 0

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResult

  field :aggregate_metric_results, 4,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetricResults,
    json_name: "aggregateMetricResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize"
end
defmodule Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          keyword_idea_metrics:
            Google.Ads.Googleads.V10.Common.KeywordPlanHistoricalMetrics.t() | nil,
          keyword_annotations: Google.Ads.Googleads.V10.Common.KeywordAnnotations.t() | nil
        }

  defstruct text: "",
            keyword_idea_metrics: nil,
            keyword_annotations: nil

  field :text, 5, type: :string

  field :keyword_idea_metrics, 3,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanHistoricalMetrics,
    json_name: "keywordIdeaMetrics"

  field :keyword_annotations, 6,
    type: Google.Ads.Googleads.V10.Common.KeywordAnnotations,
    json_name: "keywordAnnotations"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanIdeaService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.KeywordPlanIdeaService"

  rpc :GenerateKeywordIdeas,
      Google.Ads.Googleads.V10.Services.GenerateKeywordIdeasRequest,
      Google.Ads.Googleads.V10.Services.GenerateKeywordIdeaResponse
end

defmodule Google.Ads.Googleads.V10.Services.KeywordPlanIdeaService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.KeywordPlanIdeaService.Service
end
