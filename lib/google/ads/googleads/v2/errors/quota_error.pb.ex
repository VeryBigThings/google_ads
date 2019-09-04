defmodule Google.Ads.Googleads.V2.Errors.QuotaErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.QuotaErrorEnum.QuotaError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:RESOURCE_EXHAUSTED, 2)
  field(:ACCESS_PROHIBITED, 3)
  field(:RESOURCE_TEMPORARILY_EXHAUSTED, 4)
end
