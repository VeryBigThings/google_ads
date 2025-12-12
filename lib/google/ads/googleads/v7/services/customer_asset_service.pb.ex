defmodule Google.Ads.Googleads.V7.Services.GetCustomerAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.CustomerAssetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.CustomerAssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.CustomerAsset, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V7.Resources.CustomerAsset, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerAssetResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.CustomerAssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CustomerAssetService"

  rpc :GetCustomerAsset,
      Google.Ads.Googleads.V7.Services.GetCustomerAssetRequest,
      Google.Ads.Googleads.V7.Resources.CustomerAsset

  rpc :MutateCustomerAssets,
      Google.Ads.Googleads.V7.Services.MutateCustomerAssetsRequest,
      Google.Ads.Googleads.V7.Services.MutateCustomerAssetsResponse
end

defmodule Google.Ads.Googleads.V7.Services.CustomerAssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CustomerAssetService.Service
end
