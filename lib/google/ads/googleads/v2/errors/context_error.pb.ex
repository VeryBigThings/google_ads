defmodule Google.Ads.Googleads.V2.Errors.ContextErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.ContextErrorEnum.ContextError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:OPERATION_NOT_PERMITTED_FOR_CONTEXT, 2)
  field(:OPERATION_NOT_PERMITTED_FOR_REMOVED_RESOURCE, 3)
end
