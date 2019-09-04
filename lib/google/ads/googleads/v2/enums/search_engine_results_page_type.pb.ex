defmodule Google.Ads.Googleads.V2.Enums.SearchEngineResultsPageTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.SearchEngineResultsPageTypeEnum.SearchEngineResultsPageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:ADS_ONLY, 2)
  field(:ORGANIC_ONLY, 3)
  field(:ADS_AND_ORGANIC, 4)
end
