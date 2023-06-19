defmodule Google.Ads.Googleads.V13.Common.AppFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :link_text, 9, type: :string, json_name: "linkText"
  field :app_id, 10, type: :string, json_name: "appId"

  field :app_store, 3,
    type: Google.Ads.Googleads.V13.Enums.AppStoreEnum.AppStore,
    json_name: "appStore",
    enum: true

  field :final_urls, 11, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 12, repeated: true, type: :string, json_name: "finalMobileUrls"
  field :tracking_url_template, 13, type: :string, json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :final_url_suffix, 14, type: :string, json_name: "finalUrlSuffix"
end

defmodule Google.Ads.Googleads.V13.Common.CallFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phone_number, 7, type: :string, json_name: "phoneNumber"
  field :country_code, 8, type: :string, json_name: "countryCode"
  field :call_tracking_enabled, 9, type: :bool, json_name: "callTrackingEnabled"
  field :call_conversion_action, 10, type: :string, json_name: "callConversionAction"

  field :call_conversion_tracking_disabled, 11,
    type: :bool,
    json_name: "callConversionTrackingDisabled"

  field :call_conversion_reporting_state, 6,
    type:
      Google.Ads.Googleads.V13.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    json_name: "callConversionReportingState",
    enum: true
end

defmodule Google.Ads.Googleads.V13.Common.CalloutFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :callout_text, 2, type: :string, json_name: "calloutText"
end

defmodule Google.Ads.Googleads.V13.Common.LocationFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :business_name, 9, type: :string, json_name: "businessName"
  field :address_line_1, 10, type: :string, json_name: "addressLine1"
  field :address_line_2, 11, type: :string, json_name: "addressLine2"
  field :city, 12, type: :string
  field :province, 13, type: :string
  field :postal_code, 14, type: :string, json_name: "postalCode"
  field :country_code, 15, type: :string, json_name: "countryCode"
  field :phone_number, 16, type: :string, json_name: "phoneNumber"
end

defmodule Google.Ads.Googleads.V13.Common.AffiliateLocationFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :business_name, 11, type: :string, json_name: "businessName"
  field :address_line_1, 12, type: :string, json_name: "addressLine1"
  field :address_line_2, 13, type: :string, json_name: "addressLine2"
  field :city, 14, type: :string
  field :province, 15, type: :string
  field :postal_code, 16, type: :string, json_name: "postalCode"
  field :country_code, 17, type: :string, json_name: "countryCode"
  field :phone_number, 18, type: :string, json_name: "phoneNumber"
  field :chain_id, 19, type: :int64, json_name: "chainId"
  field :chain_name, 20, type: :string, json_name: "chainName"
end

defmodule Google.Ads.Googleads.V13.Common.TextMessageFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :business_name, 6, type: :string, json_name: "businessName"
  field :country_code, 7, type: :string, json_name: "countryCode"
  field :phone_number, 8, type: :string, json_name: "phoneNumber"
  field :text, 9, type: :string
  field :extension_text, 10, type: :string, json_name: "extensionText"
end

defmodule Google.Ads.Googleads.V13.Common.PriceFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V13.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true

  field :price_qualifier, 2,
    type:
      Google.Ads.Googleads.V13.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    json_name: "priceQualifier",
    enum: true

  field :tracking_url_template, 7, type: :string, json_name: "trackingUrlTemplate"
  field :language_code, 8, type: :string, json_name: "languageCode"

  field :price_offerings, 5,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.PriceOffer,
    json_name: "priceOfferings"

  field :final_url_suffix, 9, type: :string, json_name: "finalUrlSuffix"
end

defmodule Google.Ads.Googleads.V13.Common.PriceOffer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :header, 7, type: :string
  field :description, 8, type: :string
  field :price, 3, type: Google.Ads.Googleads.V13.Common.Money

  field :unit, 4,
    type: Google.Ads.Googleads.V13.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_urls, 9, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 10, repeated: true, type: :string, json_name: "finalMobileUrls"
end

defmodule Google.Ads.Googleads.V13.Common.PromotionFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :discount_type, 0

  oneof :promotion_trigger, 1

  field :promotion_target, 16, type: :string, json_name: "promotionTarget"

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V13.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    json_name: "discountModifier",
    enum: true

  field :promotion_start_date, 19, type: :string, json_name: "promotionStartDate"
  field :promotion_end_date, 20, type: :string, json_name: "promotionEndDate"

  field :occasion, 9,
    type:
      Google.Ads.Googleads.V13.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :final_urls, 21, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 22, repeated: true, type: :string, json_name: "finalMobileUrls"
  field :tracking_url_template, 23, type: :string, json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 13,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :final_url_suffix, 24, type: :string, json_name: "finalUrlSuffix"
  field :language_code, 25, type: :string, json_name: "languageCode"
  field :percent_off, 17, type: :int64, json_name: "percentOff", oneof: 0

  field :money_amount_off, 4,
    type: Google.Ads.Googleads.V13.Common.Money,
    json_name: "moneyAmountOff",
    oneof: 0

  field :promotion_code, 18, type: :string, json_name: "promotionCode", oneof: 1

  field :orders_over_amount, 6,
    type: Google.Ads.Googleads.V13.Common.Money,
    json_name: "ordersOverAmount",
    oneof: 1
end

defmodule Google.Ads.Googleads.V13.Common.StructuredSnippetFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :header, 3, type: :string
  field :values, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V13.Common.SitelinkFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :link_text, 9, type: :string, json_name: "linkText"
  field :line1, 10, type: :string
  field :line2, 11, type: :string
  field :final_urls, 12, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 13, repeated: true, type: :string, json_name: "finalMobileUrls"
  field :tracking_url_template, 14, type: :string, json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V13.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :final_url_suffix, 15, type: :string, json_name: "finalUrlSuffix"
end

defmodule Google.Ads.Googleads.V13.Common.HotelCalloutFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 3, type: :string
  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Ads.Googleads.V13.Common.ImageFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :image_asset, 1, type: :string, json_name: "imageAsset", deprecated: false
end