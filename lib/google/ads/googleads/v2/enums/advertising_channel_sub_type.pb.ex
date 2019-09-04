defmodule Google.Ads.Googleads.V2.Enums.AdvertisingChannelSubTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.AdvertisingChannelSubTypeEnum.AdvertisingChannelSubType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:SEARCH_MOBILE_APP, 2)
  field(:DISPLAY_MOBILE_APP, 3)
  field(:SEARCH_EXPRESS, 4)
  field(:DISPLAY_EXPRESS, 5)
  field(:SHOPPING_SMART_ADS, 6)
  field(:DISPLAY_GMAIL_AD, 7)
  field(:DISPLAY_SMART_CAMPAIGN, 8)
  field(:VIDEO_OUTSTREAM, 9)
  field(:VIDEO_ACTION, 10)
  field(:VIDEO_NON_SKIPPABLE, 11)
  field(:APP_CAMPAIGN, 12)
  field(:APP_CAMPAIGN_FOR_ENGAGEMENT, 13)
  field(:SHOPPING_COMPARISON_LISTING_ADS, 15)
end
