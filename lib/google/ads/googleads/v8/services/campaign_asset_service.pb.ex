defmodule Google.Ads.Googleads.V8.Services.GetCampaignAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignAssetOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CampaignAssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignAsset,
    oneof: 0

  field :update, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignAsset,
    oneof: 0

  field :remove, 2, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 1, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignAssetResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :campaign_asset, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.CampaignAsset
end

defmodule Google.Ads.Googleads.V8.Services.CampaignAssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignAssetService"

  rpc :GetCampaignAsset,
      Google.Ads.Googleads.V8.Services.GetCampaignAssetRequest,
      Google.Ads.Googleads.V8.Resources.CampaignAsset

  rpc :MutateCampaignAssets,
      Google.Ads.Googleads.V8.Services.MutateCampaignAssetsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignAssetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignAssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignAssetService.Service
end
