defmodule Google.Ads.Googleads.V8Availabilities.Services.GetSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.SharedSetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.SharedSetOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.SharedSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.SharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          shared_set: Google.Ads.Googleads.V8Availabilities.Resources.SharedSet.t() | nil
        }

  defstruct [:resource_name, :shared_set]

  field :resource_name, 1, type: :string
  field :shared_set, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.SharedSet
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.SharedSetService"

  rpc :GetSharedSet,
      Google.Ads.Googleads.V8Availabilities.Services.GetSharedSetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.SharedSet

  rpc :MutateSharedSets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.SharedSetService.Service
end
