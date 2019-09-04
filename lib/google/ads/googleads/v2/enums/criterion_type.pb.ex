defmodule Google.Ads.Googleads.V2.Enums.CriterionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.CriterionTypeEnum.CriterionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:KEYWORD, 2)
  field(:PLACEMENT, 3)
  field(:MOBILE_APP_CATEGORY, 4)
  field(:MOBILE_APPLICATION, 5)
  field(:DEVICE, 6)
  field(:LOCATION, 7)
  field(:LISTING_GROUP, 8)
  field(:AD_SCHEDULE, 9)
  field(:AGE_RANGE, 10)
  field(:GENDER, 11)
  field(:INCOME_RANGE, 12)
  field(:PARENTAL_STATUS, 13)
  field(:YOUTUBE_VIDEO, 14)
  field(:YOUTUBE_CHANNEL, 15)
  field(:USER_LIST, 16)
  field(:PROXIMITY, 17)
  field(:TOPIC, 18)
  field(:LISTING_SCOPE, 19)
  field(:LANGUAGE, 20)
  field(:IP_BLOCK, 21)
  field(:CONTENT_LABEL, 22)
  field(:CARRIER, 23)
  field(:USER_INTEREST, 24)
  field(:WEBPAGE, 25)
  field(:OPERATING_SYSTEM_VERSION, 26)
  field(:APP_PAYMENT_MODEL, 27)
  field(:MOBILE_DEVICE, 28)
  field(:CUSTOM_AFFINITY, 29)
  field(:CUSTOM_INTENT, 30)
  field(:LOCATION_GROUP, 31)
end
