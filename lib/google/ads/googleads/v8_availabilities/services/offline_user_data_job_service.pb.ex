defmodule Google.Ads.Googleads.V8Availabilities.Services.CreateOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          job: Google.Ads.Googleads.V8Availabilities.Resources.OfflineUserDataJob.t() | nil,
          validate_only: boolean
        }

  defstruct [:customer_id, :job, :validate_only]

  field :customer_id, 1, type: :string
  field :job, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.OfflineUserDataJob
  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CreateOfflineUserDataJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GetOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.RunOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          validate_only: boolean
        }

  defstruct [:resource_name, :validate_only]

  field :resource_name, 1, type: :string
  field :validate_only, 2, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AddOfflineUserDataJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          enable_partial_failure: boolean,
          operations: [Google.Ads.Googleads.V8Availabilities.Services.OfflineUserDataJobOperation.t()],
          validate_only: boolean
        }

  defstruct [:resource_name, :enable_partial_failure, :operations, :validate_only]

  field :resource_name, 1, type: :string
  field :enable_partial_failure, 4, type: :bool

  field :operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.OfflineUserDataJobOperation

  field :validate_only, 5, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.OfflineUserDataJobOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V8Availabilities.Common.UserData, oneof: 0
  field :remove_all, 3, type: :bool, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AddOfflineUserDataJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:partial_failure_error]

  field :partial_failure_error, 1, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.OfflineUserDataJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.OfflineUserDataJobService"

  rpc :CreateOfflineUserDataJob,
      Google.Ads.Googleads.V8Availabilities.Services.CreateOfflineUserDataJobRequest,
      Google.Ads.Googleads.V8Availabilities.Services.CreateOfflineUserDataJobResponse

  rpc :GetOfflineUserDataJob,
      Google.Ads.Googleads.V8Availabilities.Services.GetOfflineUserDataJobRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.OfflineUserDataJob

  rpc :AddOfflineUserDataJobOperations,
      Google.Ads.Googleads.V8Availabilities.Services.AddOfflineUserDataJobOperationsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.AddOfflineUserDataJobOperationsResponse

  rpc :RunOfflineUserDataJob,
      Google.Ads.Googleads.V8Availabilities.Services.RunOfflineUserDataJobRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.OfflineUserDataJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.OfflineUserDataJobService.Service
end
