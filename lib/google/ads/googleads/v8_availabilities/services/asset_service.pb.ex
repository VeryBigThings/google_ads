defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.AssetOperation
  field :partial_failure, 5, type: :bool

  field :response_content_type, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true

  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.Asset, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.Asset, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.MutateAssetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :asset, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.Asset
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AssetService"

  rpc :GetAsset,
      Google.Ads.Googleads.V8Availabilities.Services.GetAssetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.Asset

  rpc :MutateAssets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAssetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAssetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AssetService.Service
end
