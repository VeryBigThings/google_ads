defmodule Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CATEGORY
          | :KNOWLEDGE_GRAPH
          | :GEO_TARGET_COUNTRY
          | :SUB_COUNTRY_LOCATION
          | :YOUTUBE_CHANNEL
          | :YOUTUBE_DYNAMIC_LINEUP
          | :AFFINITY_USER_INTEREST
          | :IN_MARKET_USER_INTEREST
          | :PARENTAL_STATUS
          | :INCOME_RANGE
          | :AGE_RANGE
          | :GENDER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CATEGORY, 2
  field :KNOWLEDGE_GRAPH, 3
  field :GEO_TARGET_COUNTRY, 4
  field :SUB_COUNTRY_LOCATION, 5
  field :YOUTUBE_CHANNEL, 6
  field :YOUTUBE_DYNAMIC_LINEUP, 7
  field :AFFINITY_USER_INTEREST, 8
  field :IN_MARKET_USER_INTEREST, 9
  field :PARENTAL_STATUS, 10
  field :INCOME_RANGE, 11
  field :AGE_RANGE, 12
  field :GENDER, 13
end
defmodule Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
