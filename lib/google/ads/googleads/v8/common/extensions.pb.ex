defmodule Google.Ads.Googleads.V8.Common.AppFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_text: Google.Protobuf.StringValue.t() | nil,
          app_id: Google.Protobuf.StringValue.t() | nil,
          app_store: Google.Ads.Googleads.V8.Enums.AppStoreEnum.AppStore.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V8.Common.CustomParameter.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :link_text,
    :app_id,
    :app_store,
    :final_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :url_custom_parameters,
    :final_url_suffix
  ]

  field :link_text, 9, type: Google.Protobuf.StringValue
  field :app_id, 10, type: Google.Protobuf.StringValue
  field :app_store, 3, type: Google.Ads.Googleads.V8.Enums.AppStoreEnum.AppStore, enum: true
  field :final_urls, 11, repeated: true, type: :string
  field :final_mobile_urls, 12, repeated: true, type: :string
  field :tracking_url_template, 13, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :final_url_suffix, 14, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.CallFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          call_tracking_enabled: Google.Protobuf.BoolValue.t() | nil,
          call_conversion_action: Google.Protobuf.StringValue.t() | nil,
          call_conversion_tracking_disabled: Google.Protobuf.BoolValue.t() | nil,
          call_conversion_reporting_state:
            Google.Ads.Googleads.V8.Enums.CallConversionReportingStateEnum.CallConversionReportingState.t()
        }

  defstruct [
    :phone_number,
    :country_code,
    :call_tracking_enabled,
    :call_conversion_action,
    :call_conversion_tracking_disabled,
    :call_conversion_reporting_state
  ]

  field :phone_number, 7, type: Google.Protobuf.StringValue
  field :country_code, 8, type: Google.Protobuf.StringValue
  field :call_tracking_enabled, 9, type: Google.Protobuf.BoolValue
  field :call_conversion_action, 10, type: Google.Protobuf.StringValue
  field :call_conversion_tracking_disabled, 11, type: Google.Protobuf.BoolValue

  field :call_conversion_reporting_state, 6,
    type:
      Google.Ads.Googleads.V8.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Common.CalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          callout_text: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:callout_text]

  field :callout_text, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.LocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: Google.Protobuf.StringValue.t() | nil,
          address_line_1: Google.Protobuf.StringValue.t() | nil,
          address_line_2: Google.Protobuf.StringValue.t() | nil,
          city: Google.Protobuf.StringValue.t() | nil,
          province: Google.Protobuf.StringValue.t() | nil,
          postal_code: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          phone_number: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :business_name,
    :address_line_1,
    :address_line_2,
    :city,
    :province,
    :postal_code,
    :country_code,
    :phone_number
  ]

  field :business_name, 9, type: Google.Protobuf.StringValue
  field :address_line_1, 10, type: Google.Protobuf.StringValue
  field :address_line_2, 11, type: Google.Protobuf.StringValue
  field :city, 12, type: Google.Protobuf.StringValue
  field :province, 13, type: Google.Protobuf.StringValue
  field :postal_code, 14, type: Google.Protobuf.StringValue
  field :country_code, 15, type: Google.Protobuf.StringValue
  field :phone_number, 16, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.AffiliateLocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: Google.Protobuf.StringValue.t() | nil,
          address_line_1: Google.Protobuf.StringValue.t() | nil,
          address_line_2: Google.Protobuf.StringValue.t() | nil,
          city: Google.Protobuf.StringValue.t() | nil,
          province: Google.Protobuf.StringValue.t() | nil,
          postal_code: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          phone_number: Google.Protobuf.StringValue.t() | nil,
          chain_id: Google.Protobuf.Int64Value.t() | nil,
          chain_name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :business_name,
    :address_line_1,
    :address_line_2,
    :city,
    :province,
    :postal_code,
    :country_code,
    :phone_number,
    :chain_id,
    :chain_name
  ]

  field :business_name, 11, type: Google.Protobuf.StringValue
  field :address_line_1, 12, type: Google.Protobuf.StringValue
  field :address_line_2, 13, type: Google.Protobuf.StringValue
  field :city, 14, type: Google.Protobuf.StringValue
  field :province, 15, type: Google.Protobuf.StringValue
  field :postal_code, 16, type: Google.Protobuf.StringValue
  field :country_code, 17, type: Google.Protobuf.StringValue
  field :phone_number, 18, type: Google.Protobuf.StringValue
  field :chain_id, 19, type: Google.Protobuf.Int64Value
  field :chain_name, 20, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.TextMessageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          phone_number: Google.Protobuf.StringValue.t() | nil,
          text: Google.Protobuf.StringValue.t() | nil,
          extension_text: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:business_name, :country_code, :phone_number, :text, :extension_text]

  field :business_name, 6, type: Google.Protobuf.StringValue
  field :country_code, 7, type: Google.Protobuf.StringValue
  field :phone_number, 8, type: Google.Protobuf.StringValue
  field :text, 9, type: Google.Protobuf.StringValue
  field :extension_text, 10, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.PriceFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V8.Enums.PriceExtensionTypeEnum.PriceExtensionType.t(),
          price_qualifier:
            Google.Ads.Googleads.V8.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier.t(),
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil,
          price_offerings: [Google.Ads.Googleads.V8.Common.PriceOffer.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :type,
    :price_qualifier,
    :tracking_url_template,
    :language_code,
    :price_offerings,
    :final_url_suffix
  ]

  field :type, 1,
    type: Google.Ads.Googleads.V8.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true

  field :price_qualifier, 2,
    type:
      Google.Ads.Googleads.V8.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    enum: true

  field :tracking_url_template, 7, type: Google.Protobuf.StringValue
  field :language_code, 8, type: Google.Protobuf.StringValue
  field :price_offerings, 5, repeated: true, type: Google.Ads.Googleads.V8.Common.PriceOffer
  field :final_url_suffix, 9, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.PriceOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          price: Google.Ads.Googleads.V8.Common.Money.t() | nil,
          unit:
            Google.Ads.Googleads.V8.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()]
        }

  defstruct [:header, :description, :price, :unit, :final_urls, :final_mobile_urls]

  field :header, 7, type: Google.Protobuf.StringValue
  field :description, 8, type: Google.Protobuf.StringValue
  field :price, 3, type: Google.Ads.Googleads.V8.Common.Money

  field :unit, 4,
    type: Google.Ads.Googleads.V8.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_urls, 9, repeated: true, type: :string
  field :final_mobile_urls, 10, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.PromotionFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          discount_type: {atom, any},
          promotion_trigger: {atom, any},
          promotion_target: Google.Protobuf.StringValue.t() | nil,
          discount_modifier:
            Google.Ads.Googleads.V8.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier.t(),
          promotion_start_date: Google.Protobuf.StringValue.t() | nil,
          promotion_end_date: Google.Protobuf.StringValue.t() | nil,
          occasion:
            Google.Ads.Googleads.V8.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V8.Common.CustomParameter.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :discount_type,
    :promotion_trigger,
    :promotion_target,
    :discount_modifier,
    :promotion_start_date,
    :promotion_end_date,
    :occasion,
    :final_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :url_custom_parameters,
    :final_url_suffix,
    :language_code
  ]

  oneof :discount_type, 0
  oneof :promotion_trigger, 1
  field :promotion_target, 16, type: Google.Protobuf.StringValue

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V8.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :promotion_start_date, 19, type: Google.Protobuf.StringValue
  field :promotion_end_date, 20, type: Google.Protobuf.StringValue

  field :occasion, 9,
    type: Google.Ads.Googleads.V8.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :final_urls, 21, repeated: true, type: :string
  field :final_mobile_urls, 22, repeated: true, type: :string
  field :tracking_url_template, 23, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 13,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :final_url_suffix, 24, type: Google.Protobuf.StringValue
  field :language_code, 25, type: Google.Protobuf.StringValue
  field :percent_off, 17, type: :int64, oneof: 0
  field :money_amount_off, 4, type: Google.Ads.Googleads.V8.Common.Money, oneof: 0
  field :promotion_code, 18, type: :string, oneof: 1
  field :orders_over_amount, 6, type: Google.Ads.Googleads.V8.Common.Money, oneof: 1
end

defmodule Google.Ads.Googleads.V8.Common.StructuredSnippetFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Google.Protobuf.StringValue.t() | nil,
          values: [String.t()]
        }

  defstruct [:header, :values]

  field :header, 3, type: Google.Protobuf.StringValue
  field :values, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.SitelinkFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_text: Google.Protobuf.StringValue.t() | nil,
          line1: Google.Protobuf.StringValue.t() | nil,
          line2: Google.Protobuf.StringValue.t() | nil,
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V8.Common.CustomParameter.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :link_text,
    :line1,
    :line2,
    :final_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :url_custom_parameters,
    :final_url_suffix
  ]

  field :link_text, 9, type: Google.Protobuf.StringValue
  field :line1, 10, type: Google.Protobuf.StringValue
  field :line2, 11, type: Google.Protobuf.StringValue
  field :final_urls, 12, repeated: true, type: :string
  field :final_mobile_urls, 13, repeated: true, type: :string
  field :tracking_url_template, 14, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :final_url_suffix, 15, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.HotelCalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:text, :language_code]

  field :text, 3, type: Google.Protobuf.StringValue
  field :language_code, 4, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V8.Common.ImageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_asset: String.t()
        }

  defstruct [:image_asset]

  field :image_asset, 1, type: :string
end
