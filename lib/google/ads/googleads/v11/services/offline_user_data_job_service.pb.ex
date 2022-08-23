defmodule Google.Ads.Googleads.V11.Services.CreateOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          job: Google.Ads.Googleads.V11.Resources.OfflineUserDataJob.t() | nil,
          validate_only: boolean,
          enable_match_rate_range_preview: boolean
        }

  defstruct customer_id: "",
            job: nil,
            validate_only: false,
            enable_match_rate_range_preview: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :job, 2, type: Google.Ads.Googleads.V11.Resources.OfflineUserDataJob, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :enable_match_rate_range_preview, 5, type: :bool, json_name: "enableMatchRateRangePreview"
end
defmodule Google.Ads.Googleads.V11.Services.CreateOfflineUserDataJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.RunOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          validate_only: boolean
        }

  defstruct resource_name: "",
            validate_only: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V11.Services.AddOfflineUserDataJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          enable_partial_failure: boolean,
          enable_warnings: boolean,
          operations: [Google.Ads.Googleads.V11.Services.OfflineUserDataJobOperation.t()],
          validate_only: boolean
        }

  defstruct resource_name: "",
            enable_partial_failure: false,
            enable_warnings: false,
            operations: [],
            validate_only: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :enable_partial_failure, 4, type: :bool, json_name: "enablePartialFailure"
  field :enable_warnings, 6, type: :bool, json_name: "enableWarnings"

  field :operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.OfflineUserDataJobOperation,
    deprecated: false

  field :validate_only, 5, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V11.Services.OfflineUserDataJobOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V11.Common.UserData.t() | nil}
            | {:remove, Google.Ads.Googleads.V11.Common.UserData.t() | nil}
            | {:remove_all, boolean}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V11.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V11.Common.UserData, oneof: 0
  field :remove_all, 3, type: :bool, json_name: "removeAll", oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.AddOfflineUserDataJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          warning: Google.Rpc.Status.t() | nil
        }

  defstruct partial_failure_error: nil,
            warning: nil

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :warning, 2, type: Google.Rpc.Status
end
defmodule Google.Ads.Googleads.V11.Services.OfflineUserDataJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.OfflineUserDataJobService"

  rpc :CreateOfflineUserDataJob,
      Google.Ads.Googleads.V11.Services.CreateOfflineUserDataJobRequest,
      Google.Ads.Googleads.V11.Services.CreateOfflineUserDataJobResponse

  rpc :AddOfflineUserDataJobOperations,
      Google.Ads.Googleads.V11.Services.AddOfflineUserDataJobOperationsRequest,
      Google.Ads.Googleads.V11.Services.AddOfflineUserDataJobOperationsResponse

  rpc :RunOfflineUserDataJob,
      Google.Ads.Googleads.V11.Services.RunOfflineUserDataJobRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Googleads.V11.Services.OfflineUserDataJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.OfflineUserDataJobService.Service
end
