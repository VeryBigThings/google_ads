defmodule Google.Ads.Googleads.V2.Errors.PartialFailureErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.PartialFailureErrorEnum.PartialFailureError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:PARTIAL_FAILURE_MODE_REQUIRED, 2)
end
