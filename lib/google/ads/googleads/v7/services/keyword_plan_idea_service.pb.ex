defmodule Google.Ads.Googleads.V7.Services.GenerateKeywordIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


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


  field :url, 3, type: :string
  field :keywords, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.KeywordSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keywords, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.SiteSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :site, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.UrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :url, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.GenerateKeywordIdeaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


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
