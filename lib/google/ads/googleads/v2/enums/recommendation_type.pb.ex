defmodule Google.Ads.Googleads.V2.Enums.RecommendationTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.RecommendationTypeEnum.RecommendationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CAMPAIGN_BUDGET, 2)
  field(:KEYWORD, 3)
  field(:TEXT_AD, 4)
  field(:TARGET_CPA_OPT_IN, 5)
  field(:MAXIMIZE_CONVERSIONS_OPT_IN, 6)
  field(:ENHANCED_CPC_OPT_IN, 7)
  field(:SEARCH_PARTNERS_OPT_IN, 8)
  field(:MAXIMIZE_CLICKS_OPT_IN, 9)
  field(:OPTIMIZE_AD_ROTATION, 10)
  field(:CALLOUT_EXTENSION, 11)
  field(:SITELINK_EXTENSION, 12)
  field(:CALL_EXTENSION, 13)
  field(:KEYWORD_MATCH_TYPE, 14)
  field(:MOVE_UNUSED_BUDGET, 15)
end
