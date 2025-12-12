defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCampaignSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CampaignSharedSetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignSharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignSharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignSharedSetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :campaign_shared_set, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignSharedSet
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignSharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CampaignSharedSetService"

  rpc :GetCampaignSharedSet,
      Google.Ads.Googleads.V8Availabilities.Services.GetCampaignSharedSetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CampaignSharedSet

  rpc :MutateCampaignSharedSets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignSharedSetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignSharedSetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignSharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CampaignSharedSetService.Service
end
