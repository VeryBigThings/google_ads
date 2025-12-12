defmodule Google.Ads.Googleads.V7.Services.GetCampaignSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateCampaignSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.CampaignSharedSetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.CampaignSharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V7.Resources.CampaignSharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateCampaignSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateCampaignSharedSetResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateCampaignSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :campaign_shared_set, 2, type: Google.Ads.Googleads.V7.Resources.CampaignSharedSet
end

defmodule Google.Ads.Googleads.V7.Services.CampaignSharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CampaignSharedSetService"

  rpc :GetCampaignSharedSet,
      Google.Ads.Googleads.V7.Services.GetCampaignSharedSetRequest,
      Google.Ads.Googleads.V7.Resources.CampaignSharedSet

  rpc :MutateCampaignSharedSets,
      Google.Ads.Googleads.V7.Services.MutateCampaignSharedSetsRequest,
      Google.Ads.Googleads.V7.Services.MutateCampaignSharedSetsResponse
end

defmodule Google.Ads.Googleads.V7.Services.CampaignSharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CampaignSharedSetService.Service
end
