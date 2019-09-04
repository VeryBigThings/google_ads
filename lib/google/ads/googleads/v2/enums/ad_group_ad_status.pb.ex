defmodule Google.Ads.Googleads.V2.Enums.AdGroupAdStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AdGroupAdStatusEnum.AdGroupAdStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ENABLED, 2)
  field(:PAUSED, 3)
  field(:REMOVED, 4)
end
