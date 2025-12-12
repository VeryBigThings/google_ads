defmodule Google.Ads.Googleads.V7.Services.GetKeywordPlanAdGroupKeywordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.KeywordPlanAdGroupKeywordService"

  rpc :GetKeywordPlanAdGroupKeyword,
      Google.Ads.Googleads.V7.Services.GetKeywordPlanAdGroupKeywordRequest,
      Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword

  rpc :MutateKeywordPlanAdGroupKeywords,
      Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordsRequest,
      Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordsResponse
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordService.Service
end
