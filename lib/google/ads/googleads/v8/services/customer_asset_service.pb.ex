defmodule Google.Ads.Googleads.V8.Services.GetCustomerAssetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.CustomerAssetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CustomerAssetOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CustomerAssetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerAsset,
    oneof: 0

  field :update, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerAsset,
    oneof: 0

  field :remove, 2, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateCustomerAssetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerAssetResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerAssetResult do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customer_asset: Google.Ads.Googleads.V8.Resources.CustomerAsset.t() | nil
        }

  defstruct [:resource_name, :customer_asset]

  field :resource_name, 1, optional: true, type: :string
  field :customer_asset, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.CustomerAsset
end

defmodule Google.Ads.Googleads.V8.Services.CustomerAssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerAssetService"

  rpc :GetCustomerAsset,
      Google.Ads.Googleads.V8.Services.GetCustomerAssetRequest,
      Google.Ads.Googleads.V8.Resources.CustomerAsset

  rpc :MutateCustomerAssets,
      Google.Ads.Googleads.V8.Services.MutateCustomerAssetsRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerAssetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerAssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomerAssetService.Service
end
