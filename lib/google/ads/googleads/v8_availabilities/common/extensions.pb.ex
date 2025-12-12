defmodule Google.Ads.Googleads.V8Availabilities.Common.AppFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :link_text, 9, type: :string
  field :app_id, 10, type: :string
  field :app_store, 3, type: Google.Ads.Googleads.V8Availabilities.Enums.AppStoreEnum.AppStore, enum: true
  field :final_urls, 11, repeated: true, type: :string
  field :final_mobile_urls, 12, repeated: true, type: :string
  field :tracking_url_template, 13, type: :string

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.CustomParameter

  field :final_url_suffix, 14, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CallFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :phone_number, 7, type: :string
  field :country_code, 8, type: :string
  field :call_tracking_enabled, 9, type: :bool
  field :call_conversion_action, 10, type: :string
  field :call_conversion_tracking_disabled, 11, type: :bool

  field :call_conversion_reporting_state, 6,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :callout_text, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.LocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :business_name, 9, type: :string
  field :address_line_1, 10, type: :string
  field :address_line_2, 11, type: :string
  field :city, 12, type: :string
  field :province, 13, type: :string
  field :postal_code, 14, type: :string
  field :country_code, 15, type: :string
  field :phone_number, 16, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.AffiliateLocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :business_name, 11, type: :string
  field :address_line_1, 12, type: :string
  field :address_line_2, 13, type: :string
  field :city, 14, type: :string
  field :province, 15, type: :string
  field :postal_code, 16, type: :string
  field :country_code, 17, type: :string
  field :phone_number, 18, type: :string
  field :chain_id, 19, type: :int64
  field :chain_name, 20, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.TextMessageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :business_name, 6, type: :string
  field :country_code, 7, type: :string
  field :phone_number, 8, type: :string
  field :text, 9, type: :string
  field :extension_text, 10, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PriceFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :type, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true

  field :price_qualifier, 2,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    enum: true

  field :tracking_url_template, 7, type: :string
  field :language_code, 8, type: :string
  field :price_offerings, 5, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.PriceOffer
  field :final_url_suffix, 9, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PriceOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :header, 7, type: :string
  field :description, 8, type: :string
  field :price, 3, type: Google.Ads.Googleads.V8Availabilities.Common.Money

  field :unit, 4,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_urls, 9, repeated: true, type: :string
  field :final_mobile_urls, 10, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PromotionFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :discount_type, 0
  oneof :promotion_trigger, 1

  field :promotion_target, 16, type: :string

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :promotion_start_date, 19, type: :string
  field :promotion_end_date, 20, type: :string

  field :occasion, 9,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :final_urls, 21, repeated: true, type: :string
  field :final_mobile_urls, 22, repeated: true, type: :string
  field :tracking_url_template, 23, type: :string

  field :url_custom_parameters, 13,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.CustomParameter

  field :final_url_suffix, 24, type: :string
  field :language_code, 25, type: :string
  field :percent_off, 17, type: :int64, oneof: 0
  field :money_amount_off, 4, type: Google.Ads.Googleads.V8Availabilities.Common.Money, oneof: 0
  field :promotion_code, 18, type: :string, oneof: 1
  field :orders_over_amount, 6, type: Google.Ads.Googleads.V8Availabilities.Common.Money, oneof: 1
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.StructuredSnippetFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :header, 3, type: :string
  field :values, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.SitelinkFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :link_text, 9, type: :string
  field :line1, 10, type: :string
  field :line2, 11, type: :string
  field :final_urls, 12, repeated: true, type: :string
  field :final_mobile_urls, 13, repeated: true, type: :string
  field :tracking_url_template, 14, type: :string

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.CustomParameter

  field :final_url_suffix, 15, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.HotelCalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :text, 3, type: :string
  field :language_code, 4, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.ImageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :image_asset, 1, type: :string
end
