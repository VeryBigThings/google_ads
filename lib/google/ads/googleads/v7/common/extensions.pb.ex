defmodule Google.Ads.Googleads.V7.Common.AppFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_text: String.t(),
          app_id: String.t(),
          app_store: Google.Ads.Googleads.V7.Enums.AppStoreEnum.AppStore.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V7.Common.CustomParameter.t()],
          final_url_suffix: String.t()
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

  field :link_text, 9, type: :string
  field :app_id, 10, type: :string
  field :app_store, 3, type: Google.Ads.Googleads.V7.Enums.AppStoreEnum.AppStore, enum: true
  field :final_urls, 11, repeated: true, type: :string
  field :final_mobile_urls, 12, repeated: true, type: :string
  field :tracking_url_template, 13, type: :string

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.CustomParameter

  field :final_url_suffix, 14, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.CallFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: String.t(),
          country_code: String.t(),
          call_tracking_enabled: boolean,
          call_conversion_action: String.t(),
          call_conversion_tracking_disabled: boolean,
          call_conversion_reporting_state:
            Google.Ads.Googleads.V7.Enums.CallConversionReportingStateEnum.CallConversionReportingState.t()
        }
  defstruct [
    :phone_number,
    :country_code,
    :call_tracking_enabled,
    :call_conversion_action,
    :call_conversion_tracking_disabled,
    :call_conversion_reporting_state
  ]

  field :phone_number, 7, type: :string
  field :country_code, 8, type: :string
  field :call_tracking_enabled, 9, type: :bool
  field :call_conversion_action, 10, type: :string
  field :call_conversion_tracking_disabled, 11, type: :bool

  field :call_conversion_reporting_state, 6,
    type:
      Google.Ads.Googleads.V7.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Common.CalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          callout_text: String.t()
        }
  defstruct [:callout_text]

  field :callout_text, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.LocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: String.t(),
          address_line_1: String.t(),
          address_line_2: String.t(),
          city: String.t(),
          province: String.t(),
          postal_code: String.t(),
          country_code: String.t(),
          phone_number: String.t()
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

  field :business_name, 9, type: :string
  field :address_line_1, 10, type: :string
  field :address_line_2, 11, type: :string
  field :city, 12, type: :string
  field :province, 13, type: :string
  field :postal_code, 14, type: :string
  field :country_code, 15, type: :string
  field :phone_number, 16, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.AffiliateLocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: String.t(),
          address_line_1: String.t(),
          address_line_2: String.t(),
          city: String.t(),
          province: String.t(),
          postal_code: String.t(),
          country_code: String.t(),
          phone_number: String.t(),
          chain_id: integer,
          chain_name: String.t()
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

defmodule Google.Ads.Googleads.V7.Common.TextMessageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: String.t(),
          country_code: String.t(),
          phone_number: String.t(),
          text: String.t(),
          extension_text: String.t()
        }
  defstruct [:business_name, :country_code, :phone_number, :text, :extension_text]

  field :business_name, 6, type: :string
  field :country_code, 7, type: :string
  field :phone_number, 8, type: :string
  field :text, 9, type: :string
  field :extension_text, 10, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.PriceFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V7.Enums.PriceExtensionTypeEnum.PriceExtensionType.t(),
          price_qualifier:
            Google.Ads.Googleads.V7.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier.t(),
          tracking_url_template: String.t(),
          language_code: String.t(),
          price_offerings: [Google.Ads.Googleads.V7.Common.PriceOffer.t()],
          final_url_suffix: String.t()
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
    type: Google.Ads.Googleads.V7.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true

  field :price_qualifier, 2,
    type:
      Google.Ads.Googleads.V7.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    enum: true

  field :tracking_url_template, 7, type: :string
  field :language_code, 8, type: :string
  field :price_offerings, 5, repeated: true, type: Google.Ads.Googleads.V7.Common.PriceOffer
  field :final_url_suffix, 9, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.PriceOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          description: String.t(),
          price: Google.Ads.Googleads.V7.Common.Money.t() | nil,
          unit:
            Google.Ads.Googleads.V7.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()]
        }
  defstruct [:header, :description, :price, :unit, :final_urls, :final_mobile_urls]

  field :header, 7, type: :string
  field :description, 8, type: :string
  field :price, 3, type: Google.Ads.Googleads.V7.Common.Money

  field :unit, 4,
    type: Google.Ads.Googleads.V7.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_urls, 9, repeated: true, type: :string
  field :final_mobile_urls, 10, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.PromotionFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          discount_type: {atom, any},
          promotion_trigger: {atom, any},
          promotion_target: String.t(),
          discount_modifier:
            Google.Ads.Googleads.V7.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier.t(),
          promotion_start_date: String.t(),
          promotion_end_date: String.t(),
          occasion:
            Google.Ads.Googleads.V7.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V7.Common.CustomParameter.t()],
          final_url_suffix: String.t(),
          language_code: String.t()
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

  field :promotion_target, 16, type: :string

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V7.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :promotion_start_date, 19, type: :string
  field :promotion_end_date, 20, type: :string

  field :occasion, 9,
    type: Google.Ads.Googleads.V7.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :final_urls, 21, repeated: true, type: :string
  field :final_mobile_urls, 22, repeated: true, type: :string
  field :tracking_url_template, 23, type: :string

  field :url_custom_parameters, 13,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.CustomParameter

  field :final_url_suffix, 24, type: :string
  field :language_code, 25, type: :string
  field :percent_off, 17, type: :int64, oneof: 0
  field :money_amount_off, 4, type: Google.Ads.Googleads.V7.Common.Money, oneof: 0
  field :promotion_code, 18, type: :string, oneof: 1
  field :orders_over_amount, 6, type: Google.Ads.Googleads.V7.Common.Money, oneof: 1
end

defmodule Google.Ads.Googleads.V7.Common.StructuredSnippetFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          values: [String.t()]
        }
  defstruct [:header, :values]

  field :header, 3, type: :string
  field :values, 4, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.SitelinkFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_text: String.t(),
          line1: String.t(),
          line2: String.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V7.Common.CustomParameter.t()],
          final_url_suffix: String.t()
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

  field :link_text, 9, type: :string
  field :line1, 10, type: :string
  field :line2, 11, type: :string
  field :final_urls, 12, repeated: true, type: :string
  field :final_mobile_urls, 13, repeated: true, type: :string
  field :tracking_url_template, 14, type: :string

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.CustomParameter

  field :final_url_suffix, 15, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.HotelCalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          language_code: String.t()
        }
  defstruct [:text, :language_code]

  field :text, 3, type: :string
  field :language_code, 4, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.ImageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_asset: String.t()
        }
  defstruct [:image_asset]

  field :image_asset, 1, type: :string
end
