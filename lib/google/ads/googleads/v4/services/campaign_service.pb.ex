defmodule Google.Ads.Googleads.V4.Services.GetCampaignRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.CampaignOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.CampaignOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.Campaign, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.Campaign, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MutateCampaignResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.CampaignService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.CampaignService"

  rpc :GetCampaign,
      Google.Ads.Googleads.V4.Services.GetCampaignRequest,
      Google.Ads.Googleads.V4.Resources.Campaign

  rpc :MutateCampaigns,
      Google.Ads.Googleads.V4.Services.MutateCampaignsRequest,
      Google.Ads.Googleads.V4.Services.MutateCampaignsResponse
end

defmodule Google.Ads.Googleads.V4.Services.CampaignService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.CampaignService.Service
end
