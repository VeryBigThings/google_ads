defmodule Google.Ads.Googleads.V2.Enums.CampaignExperimentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CampaignExperimentTypeEnum.CampaignExperimentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:BASE, 2)
  field(:DRAFT, 3)
  field(:EXPERIMENT, 4)
end
