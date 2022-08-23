defmodule Google.Ads.Googleads.V11.Resources.BatchJob.BatchJobMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          creation_date_time: String.t(),
          start_date_time: String.t(),
          completion_date_time: String.t(),
          estimated_completion_ratio: float | :infinity | :negative_infinity | :nan,
          operation_count: integer,
          executed_operation_count: integer
        }

  defstruct creation_date_time: "",
            start_date_time: "",
            completion_date_time: "",
            estimated_completion_ratio: 0.0,
            operation_count: 0,
            executed_operation_count: 0

  field :creation_date_time, 8, type: :string, json_name: "creationDateTime", deprecated: false
  field :start_date_time, 7, type: :string, json_name: "startDateTime", deprecated: false

  field :completion_date_time, 9,
    type: :string,
    json_name: "completionDateTime",
    deprecated: false

  field :estimated_completion_ratio, 10,
    type: :double,
    json_name: "estimatedCompletionRatio",
    deprecated: false

  field :operation_count, 11, type: :int64, json_name: "operationCount", deprecated: false

  field :executed_operation_count, 12,
    type: :int64,
    json_name: "executedOperationCount",
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.BatchJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          next_add_sequence_token: String.t(),
          metadata: Google.Ads.Googleads.V11.Resources.BatchJob.BatchJobMetadata.t() | nil,
          status: Google.Ads.Googleads.V11.Enums.BatchJobStatusEnum.BatchJobStatus.t(),
          long_running_operation: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            next_add_sequence_token: "",
            metadata: nil,
            status: :UNSPECIFIED,
            long_running_operation: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 7, type: :int64, deprecated: false

  field :next_add_sequence_token, 8,
    type: :string,
    json_name: "nextAddSequenceToken",
    deprecated: false

  field :metadata, 4,
    type: Google.Ads.Googleads.V11.Resources.BatchJob.BatchJobMetadata,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.BatchJobStatusEnum.BatchJobStatus,
    enum: true,
    deprecated: false

  field :long_running_operation, 9,
    type: :string,
    json_name: "longRunningOperation",
    deprecated: false
end
