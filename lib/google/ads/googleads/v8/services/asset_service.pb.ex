defmodule Google.Ads.Googleads.V8.Services.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.AssetOperation
  field :partial_failure, 5, optional: true, type: :bool

  field :response_content_type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true

  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.AssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 3, optional: true, type: Google.Protobuf.FieldMask
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.Asset, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.Asset, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateAssetResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :asset, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.Asset
end

defmodule Google.Ads.Googleads.V8.Services.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AssetService"

  rpc :GetAsset,
      Google.Ads.Googleads.V8.Services.GetAssetRequest,
      Google.Ads.Googleads.V8.Resources.Asset

  rpc :MutateAssets,
      Google.Ads.Googleads.V8.Services.MutateAssetsRequest,
      Google.Ads.Googleads.V8.Services.MutateAssetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AssetService.Service
end
