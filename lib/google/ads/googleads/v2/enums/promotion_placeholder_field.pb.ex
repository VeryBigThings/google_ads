defmodule Google.Ads.Googleads.V2.Enums.PromotionPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.PromotionPlaceholderFieldEnum.PromotionPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:PROMOTION_TARGET, 2)
  field(:DISCOUNT_MODIFIER, 3)
  field(:PERCENT_OFF, 4)
  field(:MONEY_AMOUNT_OFF, 5)
  field(:PROMOTION_CODE, 6)
  field(:ORDERS_OVER_AMOUNT, 7)
  field(:PROMOTION_START, 8)
  field(:PROMOTION_END, 9)
  field(:OCCASION, 10)
  field(:FINAL_URLS, 11)
  field(:FINAL_MOBILE_URLS, 12)
  field(:TRACKING_URL, 13)
  field(:LANGUAGE, 14)
  field(:FINAL_URL_SUFFIX, 15)
end
