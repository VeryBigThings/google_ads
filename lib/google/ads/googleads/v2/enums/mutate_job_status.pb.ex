defmodule Google.Ads.Googleads.V2.Enums.MutateJobStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.MutateJobStatusEnum.MutateJobStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:PENDING, 2)
  field(:RUNNING, 3)
  field(:DONE, 4)
end
