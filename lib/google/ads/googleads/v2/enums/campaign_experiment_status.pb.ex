defmodule Google.Ads.Googleads.V2.Enums.CampaignExperimentStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:INITIALIZING, 2)
  field(:INITIALIZATION_FAILED, 8)
  field(:ENABLED, 3)
  field(:GRADUATED, 4)
  field(:REMOVED, 5)
  field(:PROMOTING, 6)
  field(:PROMOTION_FAILED, 9)
  field(:PROMOTED, 7)
  field(:ENDED_MANUALLY, 10)
end
