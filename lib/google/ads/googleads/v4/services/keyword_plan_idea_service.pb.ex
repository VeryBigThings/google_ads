defmodule Google.Ads.Googleads.V4.Services.GenerateKeywordIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :seed, 0

  field :customer_id, 1, type: :string
  field :language, 7, type: Google.Protobuf.StringValue
  field :geo_target_constants, 8, repeated: true, type: Google.Protobuf.StringValue
  field :include_adult_keywords, 10, type: :bool
  field :page_token, 12, type: :string
  field :page_size, 13, type: :int32

  field :keyword_plan_network, 9,
    type: Google.Ads.Googleads.V4.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true

  field :keyword_and_url_seed, 2,
    type: Google.Ads.Googleads.V4.Services.KeywordAndUrlSeed,
    oneof: 0

  field :keyword_seed, 3, type: Google.Ads.Googleads.V4.Services.KeywordSeed, oneof: 0
  field :url_seed, 5, type: Google.Ads.Googleads.V4.Services.UrlSeed, oneof: 0
  field :site_seed, 11, type: Google.Ads.Googleads.V4.Services.SiteSeed, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.KeywordAndUrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :url, 1, type: Google.Protobuf.StringValue
  field :keywords, 2, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.KeywordSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keywords, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.SiteSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :site, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.UrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :url, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.GenerateKeywordIdeaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.GenerateKeywordIdeaResult

  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int64
end

defmodule Google.Ads.Googleads.V4.Services.GenerateKeywordIdeaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :text, 2, type: Google.Protobuf.StringValue

  field :keyword_idea_metrics, 3,
    type: Google.Ads.Googleads.V4.Common.KeywordPlanHistoricalMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanIdeaService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.KeywordPlanIdeaService"

  rpc :GenerateKeywordIdeas,
      Google.Ads.Googleads.V4.Services.GenerateKeywordIdeasRequest,
      Google.Ads.Googleads.V4.Services.GenerateKeywordIdeaResponse
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanIdeaService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.KeywordPlanIdeaService.Service
end
