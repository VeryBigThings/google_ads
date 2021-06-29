defmodule Google.Ads.Googleads.V8Availabilities.Resources.BatchJob.BatchJobMetadata do
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

  defstruct [
    :creation_date_time,
    :start_date_time,
    :completion_date_time,
    :estimated_completion_ratio,
    :operation_count,
    :executed_operation_count
  ]

  field :creation_date_time, 8, type: :string
  field :start_date_time, 7, type: :string
  field :completion_date_time, 9, type: :string
  field :estimated_completion_ratio, 10, type: :double
  field :operation_count, 11, type: :int64
  field :executed_operation_count, 12, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.BatchJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          next_add_sequence_token: String.t(),
          metadata: Google.Ads.Googleads.V8Availabilities.Resources.BatchJob.BatchJobMetadata.t() | nil,
          status: Google.Ads.Googleads.V8Availabilities.Enums.BatchJobStatusEnum.BatchJobStatus.t(),
          long_running_operation: String.t()
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
  field :id, 7, type: :int64
  field :next_add_sequence_token, 8, type: :string
  field :metadata, 4, type: Google.Ads.Googleads.V8Availabilities.Resources.BatchJob.BatchJobMetadata

  field :status, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.BatchJobStatusEnum.BatchJobStatus,
    enum: true

  field :long_running_operation, 9, type: :string
end
