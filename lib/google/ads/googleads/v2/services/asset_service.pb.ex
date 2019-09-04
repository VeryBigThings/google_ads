defmodule Google.Ads.Googleads.V2.Services.GetAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.MutateAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V2.Services.AssetOperation.t()]
        }
  defstruct [:customer_id, :operations]

  field(:customer_id, 1, type: :string)
  field(:operations, 2, repeated: true, type: Google.Ads.Googleads.V2.Services.AssetOperation)
end

defmodule Google.Ads.Googleads.V2.Services.AssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }
  defstruct [:operation]

  oneof(:operation, 0)
  field(:create, 1, type: Google.Ads.Googleads.V2.Resources.Asset, oneof: 0)
end

defmodule Google.Ads.Googleads.V2.Services.MutateAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V2.Services.MutateAssetResult.t()]
        }
  defstruct [:results]

  field(:results, 2, repeated: true, type: Google.Ads.Googleads.V2.Services.MutateAssetResult)
end

defmodule Google.Ads.Googleads.V2.Services.MutateAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.AssetService"

  rpc(
    :GetAsset,
    Google.Ads.Googleads.V2.Services.GetAssetRequest,
    Google.Ads.Googleads.V2.Resources.Asset
  )

  rpc(
    :MutateAssets,
    Google.Ads.Googleads.V2.Services.MutateAssetsRequest,
    Google.Ads.Googleads.V2.Services.MutateAssetsResponse
  )
end

defmodule Google.Ads.Googleads.V2.Services.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.AssetService.Service
end
