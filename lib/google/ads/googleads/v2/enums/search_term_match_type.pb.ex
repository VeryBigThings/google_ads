defmodule Google.Ads.Googleads.V2.Enums.SearchTermMatchTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.SearchTermMatchTypeEnum.SearchTermMatchType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:BROAD, 2)
  field(:EXACT, 3)
  field(:PHRASE, 4)
  field(:NEAR_EXACT, 5)
  field(:NEAR_PHRASE, 6)
end
