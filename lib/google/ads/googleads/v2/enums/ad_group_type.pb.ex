defmodule Google.Ads.Googleads.V2.Enums.AdGroupTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AdGroupTypeEnum.AdGroupType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:SEARCH_STANDARD, 2)
  field(:DISPLAY_STANDARD, 3)
  field(:SHOPPING_PRODUCT_ADS, 4)
  field(:HOTEL_ADS, 6)
  field(:SHOPPING_SMART_ADS, 7)
  field(:VIDEO_BUMPER, 8)
  field(:VIDEO_TRUE_VIEW_IN_STREAM, 9)
  field(:VIDEO_TRUE_VIEW_IN_DISPLAY, 10)
  field(:VIDEO_NON_SKIPPABLE_IN_STREAM, 11)
  field(:VIDEO_OUTSTREAM, 12)
  field(:SEARCH_DYNAMIC_ADS, 13)
  field(:SHOPPING_COMPARISON_LISTING_ADS, 14)
end
