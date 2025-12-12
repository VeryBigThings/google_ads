defmodule Google.Ads.Googleads.V8.Services.MutateBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operation, 2, required: true, type: Google.Ads.Googleads.V8.Services.BatchJobOperation
end

defmodule Google.Ads.Googleads.V8.Services.BatchJobOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.BatchJob, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateBatchJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :result, 1, optional: true, type: Google.Ads.Googleads.V8.Services.MutateBatchJobResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateBatchJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GetBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.RunBatchJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.AddBatchJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
  field :sequence_token, 2, optional: true, type: :string

  field :mutate_operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateOperation
end

defmodule Google.Ads.Googleads.V8.Services.AddBatchJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :total_operations, 1, optional: true, type: :int64
  field :next_sequence_token, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ListBatchJobResultsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
  field :page_token, 2, optional: true, type: :string
  field :page_size, 3, optional: true, type: :int32

  field :response_content_type, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.ListBatchJobResultsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 1, repeated: true, type: Google.Ads.Googleads.V8.Services.BatchJobResult
  field :next_page_token, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.BatchJobResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :operation_index, 1, optional: true, type: :int64

  field :mutate_operation_response, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateOperationResponse

  field :status, 3, optional: true, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V8.Services.BatchJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.BatchJobService"

  rpc :MutateBatchJob,
      Google.Ads.Googleads.V8.Services.MutateBatchJobRequest,
      Google.Ads.Googleads.V8.Services.MutateBatchJobResponse

  rpc :GetBatchJob,
      Google.Ads.Googleads.V8.Services.GetBatchJobRequest,
      Google.Ads.Googleads.V8.Resources.BatchJob

  rpc :ListBatchJobResults,
      Google.Ads.Googleads.V8.Services.ListBatchJobResultsRequest,
      Google.Ads.Googleads.V8.Services.ListBatchJobResultsResponse

  rpc :RunBatchJob,
      Google.Ads.Googleads.V8.Services.RunBatchJobRequest,
      Google.Longrunning.Operation

  rpc :AddBatchJobOperations,
      Google.Ads.Googleads.V8.Services.AddBatchJobOperationsRequest,
      Google.Ads.Googleads.V8.Services.AddBatchJobOperationsResponse
end

defmodule Google.Ads.Googleads.V8.Services.BatchJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.BatchJobService.Service
end
