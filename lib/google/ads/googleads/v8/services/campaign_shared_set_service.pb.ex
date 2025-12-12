defmodule Google.Ads.Googleads.V8.Services.GetCampaignSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignSharedSetOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CampaignSharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignSharedSet,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignSharedSetResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :campaign_shared_set, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignSharedSet
end

defmodule Google.Ads.Googleads.V8.Services.CampaignSharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignSharedSetService"

  rpc :GetCampaignSharedSet,
      Google.Ads.Googleads.V8.Services.GetCampaignSharedSetRequest,
      Google.Ads.Googleads.V8.Resources.CampaignSharedSet

  rpc :MutateCampaignSharedSets,
      Google.Ads.Googleads.V8.Services.MutateCampaignSharedSetsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignSharedSetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignSharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignSharedSetService.Service
end
