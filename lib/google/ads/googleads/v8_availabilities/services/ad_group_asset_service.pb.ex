defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.AdGroupAssetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.AdGroupAssetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupAssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAsset, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAsset, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupAssetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupAssetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_asset: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAsset.t() | nil
        }

  defstruct [:resource_name, :ad_group_asset]

  field :resource_name, 1, type: :string
  field :ad_group_asset, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAsset
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupAssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AdGroupAssetService"

  rpc :GetAdGroupAsset,
      Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupAssetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAsset

  rpc :MutateAdGroupAssets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupAssetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupAssetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupAssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AdGroupAssetService.Service
end
