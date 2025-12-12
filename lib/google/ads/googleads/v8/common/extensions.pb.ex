defmodule Google.Ads.Googleads.V8.Common.AppFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :link_text, 9, optional: true, type: :string
  field :app_id, 10, optional: true, type: :string

  field :app_store, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AppStoreEnum.AppStore,
    enum: true

  field :final_urls, 11, repeated: true, type: :string
  field :final_mobile_urls, 12, repeated: true, type: :string
  field :tracking_url_template, 13, optional: true, type: :string

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :final_url_suffix, 14, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.CallFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :phone_number, 7, optional: true, type: :string
  field :country_code, 8, optional: true, type: :string
  field :call_tracking_enabled, 9, optional: true, type: :bool
  field :call_conversion_action, 10, optional: true, type: :string
  field :call_conversion_tracking_disabled, 11, optional: true, type: :bool

  field :call_conversion_reporting_state, 6,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.CalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :callout_text, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :business_name, 9, optional: true, type: :string
  field :address_line_1, 10, optional: true, type: :string
  field :address_line_2, 11, optional: true, type: :string
  field :city, 12, optional: true, type: :string
  field :province, 13, optional: true, type: :string
  field :postal_code, 14, optional: true, type: :string
  field :country_code, 15, optional: true, type: :string
  field :phone_number, 16, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.AffiliateLocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :business_name, 11, optional: true, type: :string
  field :address_line_1, 12, optional: true, type: :string
  field :address_line_2, 13, optional: true, type: :string
  field :city, 14, optional: true, type: :string
  field :province, 15, optional: true, type: :string
  field :postal_code, 16, optional: true, type: :string
  field :country_code, 17, optional: true, type: :string
  field :phone_number, 18, optional: true, type: :string
  field :chain_id, 19, optional: true, type: :int64
  field :chain_name, 20, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.TextMessageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :business_name, 6, optional: true, type: :string
  field :country_code, 7, optional: true, type: :string
  field :phone_number, 8, optional: true, type: :string
  field :text, 9, optional: true, type: :string
  field :extension_text, 10, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PriceFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :type, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true

  field :price_qualifier, 2,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    enum: true

  field :tracking_url_template, 7, optional: true, type: :string
  field :language_code, 8, optional: true, type: :string
  field :price_offerings, 5, repeated: true, type: Google.Ads.Googleads.V8.Common.PriceOffer
  field :final_url_suffix, 9, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PriceOffer do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :header, 7, optional: true, type: :string
  field :description, 8, optional: true, type: :string
  field :price, 3, optional: true, type: Google.Ads.Googleads.V8.Common.Money

  field :unit, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_urls, 9, repeated: true, type: :string
  field :final_mobile_urls, 10, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PromotionFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :discount_type, 0
  oneof :promotion_trigger, 1
  field :promotion_target, 16, optional: true, type: :string

  field :discount_modifier, 2,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :promotion_start_date, 19, optional: true, type: :string
  field :promotion_end_date, 20, optional: true, type: :string

  field :occasion, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :final_urls, 21, repeated: true, type: :string
  field :final_mobile_urls, 22, repeated: true, type: :string
  field :tracking_url_template, 23, optional: true, type: :string

  field :url_custom_parameters, 13,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :final_url_suffix, 24, optional: true, type: :string
  field :language_code, 25, optional: true, type: :string
  field :percent_off, 17, optional: true, type: :int64, oneof: 0
  field :money_amount_off, 4, optional: true, type: Google.Ads.Googleads.V8.Common.Money, oneof: 0
  field :promotion_code, 18, optional: true, type: :string, oneof: 1

  field :orders_over_amount, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.Money,
    oneof: 1
end

defmodule Google.Ads.Googleads.V8.Common.StructuredSnippetFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :header, 3, optional: true, type: :string
  field :values, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.SitelinkFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :link_text, 9, optional: true, type: :string
  field :line1, 10, optional: true, type: :string
  field :line2, 11, optional: true, type: :string
  field :final_urls, 12, repeated: true, type: :string
  field :final_mobile_urls, 13, repeated: true, type: :string
  field :tracking_url_template, 14, optional: true, type: :string

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :final_url_suffix, 15, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.HotelCalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :text, 3, optional: true, type: :string
  field :language_code, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.ImageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :image_asset, 1, required: true, type: :string
end
