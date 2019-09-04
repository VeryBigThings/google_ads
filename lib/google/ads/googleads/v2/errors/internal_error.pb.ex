defmodule Google.Ads.Googleads.V2.Errors.InternalErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.InternalErrorEnum.InternalError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:INTERNAL_ERROR, 2)
  field(:ERROR_CODE_NOT_PUBLISHED, 3)
  field(:TRANSIENT_ERROR, 4)
end
