defmodule Google.Ads.Googleads.V4.Services.MutateBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V4.Services.BatchJobOperation
end

defmodule Google.Ads.Googleads.V4.Services.BatchJobOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V4.Resources.BatchJob, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateBatchJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :result, 1, type: Google.Ads.Googleads.V4.Services.MutateBatchJobResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateBatchJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GetBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.RunBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AddBatchJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :sequence_token, 2, type: :string

  field :mutate_operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateOperation
end

defmodule Google.Ads.Googleads.V4.Services.AddBatchJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :total_operations, 1, type: :int64
  field :next_sequence_token, 2, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ListBatchJobResultsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Ads.Googleads.V4.Services.ListBatchJobResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 1, repeated: true, type: Google.Ads.Googleads.V4.Services.BatchJobResult
  field :next_page_token, 2, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.BatchJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :operation_index, 1, type: :int64

  field :mutate_operation_response, 2,
    type: Google.Ads.Googleads.V4.Services.MutateOperationResponse

  field :status, 3, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V4.Services.BatchJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.BatchJobService"

  rpc :MutateBatchJob,
      Google.Ads.Googleads.V4.Services.MutateBatchJobRequest,
      Google.Ads.Googleads.V4.Services.MutateBatchJobResponse

  rpc :GetBatchJob,
      Google.Ads.Googleads.V4.Services.GetBatchJobRequest,
      Google.Ads.Googleads.V4.Resources.BatchJob

  rpc :ListBatchJobResults,
      Google.Ads.Googleads.V4.Services.ListBatchJobResultsRequest,
      Google.Ads.Googleads.V4.Services.ListBatchJobResultsResponse

  rpc :RunBatchJob,
      Google.Ads.Googleads.V4.Services.RunBatchJobRequest,
      Google.Longrunning.Operation

  rpc :AddBatchJobOperations,
      Google.Ads.Googleads.V4.Services.AddBatchJobOperationsRequest,
      Google.Ads.Googleads.V4.Services.AddBatchJobOperationsResponse
end

defmodule Google.Ads.Googleads.V4.Services.BatchJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.BatchJobService.Service
end
