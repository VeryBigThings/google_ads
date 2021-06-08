defmodule Google.Ads.Googleads.V7.Services.GenerateKeywordIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seed: {atom, any},
          customer_id: String.t(),
          language: String.t(),
          geo_target_constants: [String.t()],
          include_adult_keywords: boolean,
          page_token: String.t(),
          page_size: integer,
          keyword_plan_network:
            Google.Ads.Googleads.V7.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork.t(),
          keyword_annotation: [
            [
              Google.Ads.Googleads.V7.Enums.KeywordPlanKeywordAnnotationEnum.KeywordPlanKeywordAnnotation.t()
            ]
          ],
          aggregate_metrics: Google.Ads.Googleads.V7.Common.KeywordPlanAggregateMetrics.t() | nil,
          historical_metrics_options:
            Google.Ads.Googleads.V7.Common.HistoricalMetricsOptions.t() | nil
        }
  defstruct [
    :seed,
    :customer_id,
    :language,
    :geo_target_constants,
    :include_adult_keywords,
    :page_token,
    :page_size,
    :keyword_plan_network,
    :keyword_annotation,
    :aggregate_metrics,
    :historical_metrics_options
  ]

  oneof :seed, 0

  field :customer_id, 1, type: :string
  field :language, 14, type: :string
  field :geo_target_constants, 15, repeated: true, type: :string
  field :include_adult_keywords, 10, type: :bool
  field :page_token, 12, type: :string
  field :page_size, 13, type: :int32

  field :keyword_plan_network, 9,
    type: Google.Ads.Googleads.V7.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true

  field :keyword_annotation, 17,
    repeated: true,
    type:
      Google.Ads.Googleads.V7.Enums.KeywordPlanKeywordAnnotationEnum.KeywordPlanKeywordAnnotation,
    enum: true

  field :aggregate_metrics, 16, type: Google.Ads.Googleads.V7.Common.KeywordPlanAggregateMetrics

  field :historical_metrics_options, 18,
    type: Google.Ads.Googleads.V7.Common.HistoricalMetricsOptions

  field :keyword_and_url_seed, 2,
    type: Google.Ads.Googleads.V7.Services.KeywordAndUrlSeed,
    oneof: 0

  field :keyword_seed, 3, type: Google.Ads.Googleads.V7.Services.KeywordSeed, oneof: 0
  field :url_seed, 5, type: Google.Ads.Googleads.V7.Services.UrlSeed, oneof: 0
  field :site_seed, 11, type: Google.Ads.Googleads.V7.Services.SiteSeed, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.KeywordAndUrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          keywords: [String.t()]
        }
  defstruct [:url, :keywords]

  field :url, 3, type: :string
  field :keywords, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.KeywordSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keywords: [String.t()]
        }
  defstruct [:keywords]

  field :keywords, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.SiteSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          site: String.t()
        }
  defstruct [:site]

  field :site, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.UrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t()
        }
  defstruct [:url]

  field :url, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.GenerateKeywordIdeaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Services.GenerateKeywordIdeaResult.t()],
          aggregate_metric_results:
            Google.Ads.Googleads.V7.Common.KeywordPlanAggregateMetricResults.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }
  defstruct [:results, :aggregate_metric_results, :next_page_token, :total_size]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.GenerateKeywordIdeaResult

  field :aggregate_metric_results, 4,
    type: Google.Ads.Googleads.V7.Common.KeywordPlanAggregateMetricResults

  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int64
end

defmodule Google.Ads.Googleads.V7.Services.GenerateKeywordIdeaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          keyword_idea_metrics:
            Google.Ads.Googleads.V7.Common.KeywordPlanHistoricalMetrics.t() | nil,
          keyword_annotations: Google.Ads.Googleads.V7.Common.KeywordAnnotations.t() | nil
        }
  defstruct [:text, :keyword_idea_metrics, :keyword_annotations]

  field :text, 5, type: :string

  field :keyword_idea_metrics, 3,
    type: Google.Ads.Googleads.V7.Common.KeywordPlanHistoricalMetrics

  field :keyword_annotations, 6, type: Google.Ads.Googleads.V7.Common.KeywordAnnotations
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanIdeaService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.KeywordPlanIdeaService"

  rpc :GenerateKeywordIdeas,
      Google.Ads.Googleads.V7.Services.GenerateKeywordIdeasRequest,
      Google.Ads.Googleads.V7.Services.GenerateKeywordIdeaResponse
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanIdeaService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.KeywordPlanIdeaService.Service
end
