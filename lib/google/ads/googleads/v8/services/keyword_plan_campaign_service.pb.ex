defmodule Google.Ads.Googleads.V8.Services.GetKeywordPlanCampaignRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.KeywordPlanCampaignService"

  rpc :GetKeywordPlanCampaign,
      Google.Ads.Googleads.V8.Services.GetKeywordPlanCampaignRequest,
      Google.Ads.Googleads.V8.Resources.KeywordPlanCampaign

  rpc :MutateKeywordPlanCampaigns,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignsRequest,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignsResponse
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignService.Service
end
