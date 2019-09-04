defmodule Google.Ads.Googleads.V2.Enums.CustomInterestStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CustomInterestStatusEnum.CustomInterestStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ENABLED, 2)
  field(:REMOVED, 3)
end
