defmodule Google.Ads.Googleads.V8.Resources.BatchJob.BatchJobMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          creation_date_time: Google.Protobuf.StringValue.t() | nil,
          start_date_time: Google.Protobuf.StringValue.t() | nil,
          completion_date_time: Google.Protobuf.StringValue.t() | nil,
          estimated_completion_ratio: Google.Protobuf.DoubleValue.t() | nil,
          operation_count: Google.Protobuf.Int64Value.t() | nil,
          executed_operation_count: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :creation_date_time,
    :start_date_time,
    :completion_date_time,
    :estimated_completion_ratio,
    :operation_count,
    :executed_operation_count
  ]

  field :creation_date_time, 8, type: Google.Protobuf.StringValue
  field :start_date_time, 7, type: Google.Protobuf.StringValue
  field :completion_date_time, 9, type: Google.Protobuf.StringValue
  field :estimated_completion_ratio, 10, type: Google.Protobuf.DoubleValue
  field :operation_count, 11, type: Google.Protobuf.Int64Value
  field :executed_operation_count, 12, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Resources.BatchJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          next_add_sequence_token: Google.Protobuf.StringValue.t() | nil,
          metadata: Google.Ads.Googleads.V8.Resources.BatchJob.BatchJobMetadata.t() | nil,
          status: Google.Ads.Googleads.V8.Enums.BatchJobStatusEnum.BatchJobStatus.t(),
          long_running_operation: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :resource_name,
    :id,
    :next_add_sequence_token,
    :metadata,
    :status,
    :long_running_operation
  ]

  field :resource_name, 1, type: :string
  field :id, 7, type: Google.Protobuf.Int64Value
  field :next_add_sequence_token, 8, type: Google.Protobuf.StringValue
  field :metadata, 4, type: Google.Ads.Googleads.V8.Resources.BatchJob.BatchJobMetadata

  field :status, 5,
    type: Google.Ads.Googleads.V8.Enums.BatchJobStatusEnum.BatchJobStatus,
    enum: true

  field :long_running_operation, 9, type: Google.Protobuf.StringValue
end
