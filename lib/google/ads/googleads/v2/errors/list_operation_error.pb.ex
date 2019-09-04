defmodule Google.Ads.Googleads.V2.Errors.ListOperationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.ListOperationErrorEnum.ListOperationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:REQUIRED_FIELD_MISSING, 7)
  field(:DUPLICATE_VALUES, 8)
end
