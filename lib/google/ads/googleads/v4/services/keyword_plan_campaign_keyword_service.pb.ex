defmodule Google.Ads.Googleads.V4.Services.GetKeywordPlanCampaignKeywordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignKeywordsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignKeywordOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanCampaignKeywordOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.KeywordPlanCampaignKeyword, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.KeywordPlanCampaignKeyword, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignKeywordsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignKeywordResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignKeywordResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanCampaignKeywordService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.KeywordPlanCampaignKeywordService"

  rpc :GetKeywordPlanCampaignKeyword,
      Google.Ads.Googleads.V4.Services.GetKeywordPlanCampaignKeywordRequest,
      Google.Ads.Googleads.V4.Resources.KeywordPlanCampaignKeyword

  rpc :MutateKeywordPlanCampaignKeywords,
      Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignKeywordsRequest,
      Google.Ads.Googleads.V4.Services.MutateKeywordPlanCampaignKeywordsResponse
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanCampaignKeywordService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignKeywordService.Service
end
