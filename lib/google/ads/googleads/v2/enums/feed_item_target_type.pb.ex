defmodule Google.Ads.Googleads.V2.Enums.FeedItemTargetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.FeedItemTargetTypeEnum.FeedItemTargetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CAMPAIGN, 2)
  field(:AD_GROUP, 3)
  field(:CRITERION, 4)
end
