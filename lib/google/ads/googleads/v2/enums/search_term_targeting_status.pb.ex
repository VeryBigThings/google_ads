defmodule Google.Ads.Googleads.V2.Enums.SearchTermTargetingStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.SearchTermTargetingStatusEnum.SearchTermTargetingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ADDED, 2)
  field(:EXCLUDED, 3)
  field(:ADDED_EXCLUDED, 4)
  field(:NONE, 5)
end
