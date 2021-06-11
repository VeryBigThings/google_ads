defmodule Google.Ads.Googleads.V8.Services.CreateOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          customer_id: String.t(),
          job: Google.Ads.Googleads.V8.Resources.OfflineUserDataJob.t() | nil,
          validate_only: boolean
        }

  defstruct [:customer_id, :job, :validate_only]

  field :customer_id, 1, required: true, type: :string
  field :job, 2, required: true, type: Google.Ads.Googleads.V8.Resources.OfflineUserDataJob
  field :validate_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CreateOfflineUserDataJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GetOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.RunOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          validate_only: boolean
        }

  defstruct [:resource_name, :validate_only]

  field :resource_name, 1, required: true, type: :string
  field :validate_only, 2, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.AddOfflineUserDataJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          enable_partial_failure: boolean,
          operations: [Google.Ads.Googleads.V8.Services.OfflineUserDataJobOperation.t()],
          validate_only: boolean
        }

  defstruct [:resource_name, :enable_partial_failure, :operations, :validate_only]

  field :resource_name, 1, required: true, type: :string
  field :enable_partial_failure, 4, optional: true, type: :bool

  field :operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.OfflineUserDataJobOperation

  field :validate_only, 5, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.OfflineUserDataJobOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Common.UserData, oneof: 0
  field :remove, 2, optional: true, type: Google.Ads.Googleads.V8.Common.UserData, oneof: 0
  field :remove_all, 3, optional: true, type: :bool, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.AddOfflineUserDataJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:partial_failure_error]

  field :partial_failure_error, 1, optional: true, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V8.Services.OfflineUserDataJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.OfflineUserDataJobService"

  rpc :CreateOfflineUserDataJob,
      Google.Ads.Googleads.V8.Services.CreateOfflineUserDataJobRequest,
      Google.Ads.Googleads.V8.Services.CreateOfflineUserDataJobResponse

  rpc :GetOfflineUserDataJob,
      Google.Ads.Googleads.V8.Services.GetOfflineUserDataJobRequest,
      Google.Ads.Googleads.V8.Resources.OfflineUserDataJob

  rpc :AddOfflineUserDataJobOperations,
      Google.Ads.Googleads.V8.Services.AddOfflineUserDataJobOperationsRequest,
      Google.Ads.Googleads.V8.Services.AddOfflineUserDataJobOperationsResponse

  rpc :RunOfflineUserDataJob,
      Google.Ads.Googleads.V8.Services.RunOfflineUserDataJobRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Googleads.V8.Services.OfflineUserDataJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.OfflineUserDataJobService.Service
end
