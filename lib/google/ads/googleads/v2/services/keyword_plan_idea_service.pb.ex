defmodule Google.Ads.Googleads.V2.Services.GenerateKeywordIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seed: {atom, any},
          customer_id: String.t(),
          language: Google.Protobuf.StringValue.t() | nil,
          geo_target_constants: [Google.Protobuf.StringValue.t()],
          keyword_plan_network: atom | integer
        }
  defstruct [:seed, :customer_id, :language, :geo_target_constants, :keyword_plan_network]

  oneof(:seed, 0)
  field(:customer_id, 1, type: :string)
  field(:language, 7, type: Google.Protobuf.StringValue)
  field(:geo_target_constants, 8, repeated: true, type: Google.Protobuf.StringValue)

  field(:keyword_plan_network, 9,
    type: Google.Ads.Googleads.V2.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true
  )

  field(:keyword_and_url_seed, 2,
    type: Google.Ads.Googleads.V2.Services.KeywordAndUrlSeed,
    oneof: 0
  )

  field(:keyword_seed, 3, type: Google.Ads.Googleads.V2.Services.KeywordSeed, oneof: 0)
  field(:url_seed, 5, type: Google.Ads.Googleads.V2.Services.UrlSeed, oneof: 0)
end

defmodule Google.Ads.Googleads.V2.Services.KeywordAndUrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: Google.Protobuf.StringValue.t() | nil,
          keywords: [Google.Protobuf.StringValue.t()]
        }
  defstruct [:url, :keywords]

  field(:url, 1, type: Google.Protobuf.StringValue)
  field(:keywords, 2, repeated: true, type: Google.Protobuf.StringValue)
end

defmodule Google.Ads.Googleads.V2.Services.KeywordSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keywords: [Google.Protobuf.StringValue.t()]
        }
  defstruct [:keywords]

  field(:keywords, 1, repeated: true, type: Google.Protobuf.StringValue)
end

defmodule Google.Ads.Googleads.V2.Services.UrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: Google.Protobuf.StringValue.t() | nil
        }
  defstruct [:url]

  field(:url, 1, type: Google.Protobuf.StringValue)
end

defmodule Google.Ads.Googleads.V2.Services.GenerateKeywordIdeaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V2.Services.GenerateKeywordIdeaResult.t()]
        }
  defstruct [:results]

  field(:results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V2.Services.GenerateKeywordIdeaResult
  )
end

defmodule Google.Ads.Googleads.V2.Services.GenerateKeywordIdeaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil,
          keyword_idea_metrics:
            Google.Ads.Googleads.V2.Common.KeywordPlanHistoricalMetrics.t() | nil
        }
  defstruct [:text, :keyword_idea_metrics]

  field(:text, 2, type: Google.Protobuf.StringValue)

  field(:keyword_idea_metrics, 3,
    type: Google.Ads.Googleads.V2.Common.KeywordPlanHistoricalMetrics
  )
end

defmodule Google.Ads.Googleads.V2.Services.KeywordPlanIdeaService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.KeywordPlanIdeaService"

  rpc(
    :GenerateKeywordIdeas,
    Google.Ads.Googleads.V2.Services.GenerateKeywordIdeasRequest,
    Google.Ads.Googleads.V2.Services.GenerateKeywordIdeaResponse
  )
end

defmodule Google.Ads.Googleads.V2.Services.KeywordPlanIdeaService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.KeywordPlanIdeaService.Service
end
