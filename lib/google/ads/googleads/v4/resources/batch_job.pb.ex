defmodule Google.Ads.Googleads.V4.Resources.BatchJob.BatchJobMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :creation_date_time, 1, type: Google.Protobuf.StringValue
  field :completion_date_time, 2, type: Google.Protobuf.StringValue
  field :estimated_completion_ratio, 3, type: Google.Protobuf.DoubleValue
  field :operation_count, 4, type: Google.Protobuf.Int64Value
  field :executed_operation_count, 5, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.BatchJob do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :next_add_sequence_token, 3, type: Google.Protobuf.StringValue
  field :metadata, 4, type: Google.Ads.Googleads.V4.Resources.BatchJob.BatchJobMetadata

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.BatchJobStatusEnum.BatchJobStatus,
    enum: true

  field :long_running_operation, 6, type: Google.Protobuf.StringValue
end
