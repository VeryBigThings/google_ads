defmodule Google.Ads.Googleads.V4.Services.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.AssetOperation
end

defmodule Google.Ads.Googleads.V4.Services.AssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V4.Resources.Asset, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MutateAssetResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.AssetService"

  rpc :GetAsset,
      Google.Ads.Googleads.V4.Services.GetAssetRequest,
      Google.Ads.Googleads.V4.Resources.Asset

  rpc :MutateAssets,
      Google.Ads.Googleads.V4.Services.MutateAssetsRequest,
      Google.Ads.Googleads.V4.Services.MutateAssetsResponse
end

defmodule Google.Ads.Googleads.V4.Services.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.AssetService.Service
end
