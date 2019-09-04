defmodule Google.Ads.Googleads.V2.Errors.DistinctErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.DistinctErrorEnum.DistinctError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:DUPLICATE_ELEMENT, 2)
  field(:DUPLICATE_TYPE, 3)
end
