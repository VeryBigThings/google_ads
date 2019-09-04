defmodule Google.Ads.Googleads.V2.Enums.KeywordPlanCompetitionLevelEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:LOW, 2)
  field(:MEDIUM, 3)
  field(:HIGH, 4)
end
