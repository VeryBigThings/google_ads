defmodule Google.Ads.Googleads.V8.Resources.BatchJob.BatchJobMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :creation_date_time, 8, optional: true, type: :string
  field :start_date_time, 7, optional: true, type: :string
  field :completion_date_time, 9, optional: true, type: :string
  field :estimated_completion_ratio, 10, optional: true, type: :double
  field :operation_count, 11, optional: true, type: :int64
  field :executed_operation_count, 12, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.BatchJob do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 7, optional: true, type: :int64
  field :next_add_sequence_token, 8, optional: true, type: :string

  field :metadata, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.BatchJob.BatchJobMetadata

  field :status, 5,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.BatchJobStatusEnum.BatchJobStatus,
    enum: true

  field :long_running_operation, 9, optional: true, type: :string
end
