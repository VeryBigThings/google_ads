defmodule Google.Ads.Googleads.V8.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto2
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :RANDOM_QUERY | :COOKIE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :RANDOM_QUERY, 2

  field :COOKIE, 3
end

defmodule Google.Ads.Googleads.V8.Enums.CampaignExperimentTrafficSplitTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto2
  @type t :: %__MODULE__{}

  defstruct []
end
