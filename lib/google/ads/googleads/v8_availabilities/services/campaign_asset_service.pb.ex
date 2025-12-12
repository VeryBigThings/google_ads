defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCampaignAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CampaignAssetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignAssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignAsset, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignAsset, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignAssetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :campaign_asset, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignAsset
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignAssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CampaignAssetService"

  rpc :GetCampaignAsset,
      Google.Ads.Googleads.V8Availabilities.Services.GetCampaignAssetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CampaignAsset

  rpc :MutateCampaignAssets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignAssetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignAssetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignAssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CampaignAssetService.Service
end
