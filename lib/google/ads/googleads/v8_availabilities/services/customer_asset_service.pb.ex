defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomerAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomerAssetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerAssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomerAsset, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomerAsset, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerAssetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :customer_asset, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomerAsset
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerAssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomerAssetService"

  rpc :GetCustomerAsset,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomerAssetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CustomerAsset

  rpc :MutateCustomerAssets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerAssetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerAssetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerAssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CustomerAssetService.Service
end
