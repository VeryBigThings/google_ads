defmodule Google.Ads.Googleads.V2.Services.CreateMutateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t()
        }
  defstruct [:customer_id]

  field(:customer_id, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.CreateMutateJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.GetMutateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.RunMutateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.AddMutateJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          sequence_token: String.t(),
          mutate_operations: [Google.Ads.Googleads.V2.Services.MutateOperation.t()]
        }
  defstruct [:resource_name, :sequence_token, :mutate_operations]

  field(:resource_name, 1, type: :string)
  field(:sequence_token, 2, type: :string)

  field(:mutate_operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V2.Services.MutateOperation
  )
end

defmodule Google.Ads.Googleads.V2.Services.AddMutateJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_operations: integer,
          next_sequence_token: String.t()
        }
  defstruct [:total_operations, :next_sequence_token]

  field(:total_operations, 1, type: :int64)
  field(:next_sequence_token, 2, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.ListMutateJobResultsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          page_token: String.t(),
          page_size: integer
        }
  defstruct [:resource_name, :page_token, :page_size]

  field(:resource_name, 1, type: :string)
  field(:page_token, 2, type: :string)
  field(:page_size, 3, type: :int32)
end

defmodule Google.Ads.Googleads.V2.Services.ListMutateJobResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V2.Services.MutateJobResult.t()],
          next_page_token: String.t()
        }
  defstruct [:results, :next_page_token]

  field(:results, 1, repeated: true, type: Google.Ads.Googleads.V2.Services.MutateJobResult)
  field(:next_page_token, 2, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.MutateJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_index: integer,
          mutate_operation_response:
            Google.Ads.Googleads.V2.Services.MutateOperationResponse.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }
  defstruct [:operation_index, :mutate_operation_response, :status]

  field(:operation_index, 1, type: :int64)

  field(:mutate_operation_response, 2,
    type: Google.Ads.Googleads.V2.Services.MutateOperationResponse
  )

  field(:status, 3, type: Google.Rpc.Status)
end

defmodule Google.Ads.Googleads.V2.Services.MutateJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.MutateJobService"

  rpc(
    :CreateMutateJob,
    Google.Ads.Googleads.V2.Services.CreateMutateJobRequest,
    Google.Ads.Googleads.V2.Services.CreateMutateJobResponse
  )

  rpc(
    :GetMutateJob,
    Google.Ads.Googleads.V2.Services.GetMutateJobRequest,
    Google.Ads.Googleads.V2.Resources.MutateJob
  )

  rpc(
    :ListMutateJobResults,
    Google.Ads.Googleads.V2.Services.ListMutateJobResultsRequest,
    Google.Ads.Googleads.V2.Services.ListMutateJobResultsResponse
  )

  rpc(
    :RunMutateJob,
    Google.Ads.Googleads.V2.Services.RunMutateJobRequest,
    Google.Longrunning.Operation
  )

  rpc(
    :AddMutateJobOperations,
    Google.Ads.Googleads.V2.Services.AddMutateJobOperationsRequest,
    Google.Ads.Googleads.V2.Services.AddMutateJobOperationsResponse
  )
end

defmodule Google.Ads.Googleads.V2.Services.MutateJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.MutateJobService.Service
end
