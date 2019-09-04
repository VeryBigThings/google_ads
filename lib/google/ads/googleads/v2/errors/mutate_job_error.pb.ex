defmodule Google.Ads.Googleads.V2.Errors.MutateJobErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.MutateJobErrorEnum.MutateJobError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CANNOT_MODIFY_JOB_AFTER_JOB_STARTS_RUNNING, 2)
  field(:EMPTY_OPERATIONS, 3)
  field(:INVALID_SEQUENCE_TOKEN, 4)
  field(:RESULTS_NOT_READY, 5)
  field(:INVALID_PAGE_SIZE, 6)
end
