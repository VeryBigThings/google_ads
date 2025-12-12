defmodule Google.Ads.Googleads.V4.Common.AppFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :link_text, 1, type: Google.Protobuf.StringValue
  field :app_id, 2, type: Google.Protobuf.StringValue
  field :app_store, 3, type: Google.Ads.Googleads.V4.Enums.AppStoreEnum.AppStore, enum: true
  field :final_urls, 4, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 5, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 6, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :final_url_suffix, 8, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CallFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :phone_number, 1, type: Google.Protobuf.StringValue
  field :country_code, 2, type: Google.Protobuf.StringValue
  field :call_tracking_enabled, 3, type: Google.Protobuf.BoolValue
  field :call_conversion_action, 4, type: Google.Protobuf.StringValue
  field :call_conversion_tracking_disabled, 5, type: Google.Protobuf.BoolValue

  field :call_conversion_reporting_state, 6,
    type:
      Google.Ads.Googleads.V4.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.CalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :callout_text, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.LocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :business_name, 1, type: Google.Protobuf.StringValue
  field :address_line_1, 2, type: Google.Protobuf.StringValue
  field :address_line_2, 3, type: Google.Protobuf.StringValue
  field :city, 4, type: Google.Protobuf.StringValue
  field :province, 5, type: Google.Protobuf.StringValue
  field :postal_code, 6, type: Google.Protobuf.StringValue
  field :country_code, 7, type: Google.Protobuf.StringValue
  field :phone_number, 8, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.AffiliateLocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :business_name, 1, type: Google.Protobuf.StringValue
  field :address_line_1, 2, type: Google.Protobuf.StringValue
  field :address_line_2, 3, type: Google.Protobuf.StringValue
  field :city, 4, type: Google.Protobuf.StringValue
  field :province, 5, type: Google.Protobuf.StringValue
  field :postal_code, 6, type: Google.Protobuf.StringValue
  field :country_code, 7, type: Google.Protobuf.StringValue
  field :phone_number, 8, type: Google.Protobuf.StringValue
  field :chain_id, 9, type: Google.Protobuf.Int64Value
  field :chain_name, 10, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.TextMessageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :business_name, 1, type: Google.Protobuf.StringValue
  field :country_code, 2, type: Google.Protobuf.StringValue
  field :phone_number, 3, type: Google.Protobuf.StringValue
  field :text, 4, type: Google.Protobuf.StringValue
  field :extension_text, 5, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.PriceFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :type, 1,
    type: Google.Ads.Googleads.V4.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true

  field :price_qualifier, 2,
    type:
      Google.Ads.Googleads.V4.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    enum: true

  field :tracking_url_template, 3, type: Google.Protobuf.StringValue
  field :language_code, 4, type: Google.Protobuf.StringValue
  field :price_offerings, 5, repeated: true, type: Google.Ads.Googleads.V4.Common.PriceOffer
  field :final_url_suffix, 6, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.PriceOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :header, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
  field :price, 3, type: Google.Ads.Googleads.V4.Common.Money

  field :unit, 4,
    type: Google.Ads.Googleads.V4.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_urls, 5, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 6, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.PromotionFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :discount_type, 0
  oneof :promotion_trigger, 1

  field :promotion_target, 1, type: Google.Protobuf.StringValue

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V4.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :promotion_start_date, 7, type: Google.Protobuf.StringValue
  field :promotion_end_date, 8, type: Google.Protobuf.StringValue

  field :occasion, 9,
    type: Google.Ads.Googleads.V4.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :final_urls, 10, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 11, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 12, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 13,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :final_url_suffix, 14, type: Google.Protobuf.StringValue
  field :language_code, 15, type: Google.Protobuf.StringValue
  field :percent_off, 3, type: Google.Protobuf.Int64Value, oneof: 0
  field :money_amount_off, 4, type: Google.Ads.Googleads.V4.Common.Money, oneof: 0
  field :promotion_code, 5, type: Google.Protobuf.StringValue, oneof: 1
  field :orders_over_amount, 6, type: Google.Ads.Googleads.V4.Common.Money, oneof: 1
end

defmodule Google.Ads.Googleads.V4.Common.StructuredSnippetFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :header, 1, type: Google.Protobuf.StringValue
  field :values, 2, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.SitelinkFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :link_text, 1, type: Google.Protobuf.StringValue
  field :line1, 2, type: Google.Protobuf.StringValue
  field :line2, 3, type: Google.Protobuf.StringValue
  field :final_urls, 4, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 5, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 6, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :final_url_suffix, 8, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.HotelCalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :text, 1, type: Google.Protobuf.StringValue
  field :language_code, 2, type: Google.Protobuf.StringValue
end
