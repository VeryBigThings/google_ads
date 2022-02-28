defmodule Google.Ads.Googleads.V10.Common.YoutubeVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          youtube_video_id: String.t(),
          youtube_video_title: String.t()
        }

  defstruct youtube_video_id: "",
            youtube_video_title: ""

  field :youtube_video_id, 2, type: :string, json_name: "youtubeVideoId"
  field :youtube_video_title, 3, type: :string, json_name: "youtubeVideoTitle"
end
defmodule Google.Ads.Googleads.V10.Common.MediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }

  defstruct data: ""

  field :data, 2, type: :bytes
end
defmodule Google.Ads.Googleads.V10.Common.ImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          file_size: integer,
          mime_type: Google.Ads.Googleads.V10.Enums.MimeTypeEnum.MimeType.t(),
          full_size: Google.Ads.Googleads.V10.Common.ImageDimension.t() | nil
        }

  defstruct data: "",
            file_size: 0,
            mime_type: :UNSPECIFIED,
            full_size: nil

  field :data, 5, type: :bytes
  field :file_size, 6, type: :int64, json_name: "fileSize"

  field :mime_type, 3,
    type: Google.Ads.Googleads.V10.Enums.MimeTypeEnum.MimeType,
    json_name: "mimeType",
    enum: true

  field :full_size, 4, type: Google.Ads.Googleads.V10.Common.ImageDimension, json_name: "fullSize"
end
defmodule Google.Ads.Googleads.V10.Common.ImageDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          height_pixels: integer,
          width_pixels: integer,
          url: String.t()
        }

  defstruct height_pixels: 0,
            width_pixels: 0,
            url: ""

  field :height_pixels, 4, type: :int64, json_name: "heightPixels"
  field :width_pixels, 5, type: :int64, json_name: "widthPixels"
  field :url, 6, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.TextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }

  defstruct text: ""

  field :text, 2, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.LeadFormAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: String.t(),
          call_to_action_type:
            Google.Ads.Googleads.V10.Enums.LeadFormCallToActionTypeEnum.LeadFormCallToActionType.t(),
          call_to_action_description: String.t(),
          headline: String.t(),
          description: String.t(),
          privacy_policy_url: String.t(),
          post_submit_headline: String.t(),
          post_submit_description: String.t(),
          fields: [Google.Ads.Googleads.V10.Common.LeadFormField.t()],
          delivery_methods: [Google.Ads.Googleads.V10.Common.LeadFormDeliveryMethod.t()],
          post_submit_call_to_action_type:
            Google.Ads.Googleads.V10.Enums.LeadFormPostSubmitCallToActionTypeEnum.LeadFormPostSubmitCallToActionType.t(),
          background_image_asset: String.t(),
          desired_intent:
            Google.Ads.Googleads.V10.Enums.LeadFormDesiredIntentEnum.LeadFormDesiredIntent.t(),
          custom_disclosure: String.t()
        }

  defstruct business_name: "",
            call_to_action_type: :UNSPECIFIED,
            call_to_action_description: "",
            headline: "",
            description: "",
            privacy_policy_url: "",
            post_submit_headline: "",
            post_submit_description: "",
            fields: [],
            delivery_methods: [],
            post_submit_call_to_action_type: :UNSPECIFIED,
            background_image_asset: "",
            desired_intent: :UNSPECIFIED,
            custom_disclosure: ""

  field :business_name, 10, type: :string, json_name: "businessName", deprecated: false

  field :call_to_action_type, 17,
    type: Google.Ads.Googleads.V10.Enums.LeadFormCallToActionTypeEnum.LeadFormCallToActionType,
    json_name: "callToActionType",
    enum: true,
    deprecated: false

  field :call_to_action_description, 18,
    type: :string,
    json_name: "callToActionDescription",
    deprecated: false

  field :headline, 12, type: :string, deprecated: false
  field :description, 13, type: :string, deprecated: false
  field :privacy_policy_url, 14, type: :string, json_name: "privacyPolicyUrl", deprecated: false
  field :post_submit_headline, 15, type: :string, json_name: "postSubmitHeadline"
  field :post_submit_description, 16, type: :string, json_name: "postSubmitDescription"
  field :fields, 8, repeated: true, type: Google.Ads.Googleads.V10.Common.LeadFormField

  field :delivery_methods, 9,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.LeadFormDeliveryMethod,
    json_name: "deliveryMethods"

  field :post_submit_call_to_action_type, 19,
    type:
      Google.Ads.Googleads.V10.Enums.LeadFormPostSubmitCallToActionTypeEnum.LeadFormPostSubmitCallToActionType,
    json_name: "postSubmitCallToActionType",
    enum: true

  field :background_image_asset, 20, type: :string, json_name: "backgroundImageAsset"

  field :desired_intent, 21,
    type: Google.Ads.Googleads.V10.Enums.LeadFormDesiredIntentEnum.LeadFormDesiredIntent,
    json_name: "desiredIntent",
    enum: true

  field :custom_disclosure, 22, type: :string, json_name: "customDisclosure"
end
defmodule Google.Ads.Googleads.V10.Common.LeadFormField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answers:
            {:single_choice_answers,
             Google.Ads.Googleads.V10.Common.LeadFormSingleChoiceAnswers.t() | nil},
          input_type:
            Google.Ads.Googleads.V10.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType.t()
        }

  defstruct answers: nil,
            input_type: :UNSPECIFIED

  oneof :answers, 0

  field :input_type, 1,
    type:
      Google.Ads.Googleads.V10.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType,
    json_name: "inputType",
    enum: true

  field :single_choice_answers, 2,
    type: Google.Ads.Googleads.V10.Common.LeadFormSingleChoiceAnswers,
    json_name: "singleChoiceAnswers",
    oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.LeadFormSingleChoiceAnswers do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answers: [String.t()]
        }

  defstruct answers: []

  field :answers, 1, repeated: true, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.LeadFormDeliveryMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delivery_details: {:webhook, Google.Ads.Googleads.V10.Common.WebhookDelivery.t() | nil}
        }

  defstruct delivery_details: nil

  oneof :delivery_details, 0

  field :webhook, 1, type: Google.Ads.Googleads.V10.Common.WebhookDelivery, oneof: 0
end
defmodule Google.Ads.Googleads.V10.Common.WebhookDelivery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          advertiser_webhook_url: String.t(),
          google_secret: String.t(),
          payload_schema_version: integer
        }

  defstruct advertiser_webhook_url: "",
            google_secret: "",
            payload_schema_version: 0

  field :advertiser_webhook_url, 4, type: :string, json_name: "advertiserWebhookUrl"
  field :google_secret, 5, type: :string, json_name: "googleSecret"
  field :payload_schema_version, 6, type: :int64, json_name: "payloadSchemaVersion"
end
defmodule Google.Ads.Googleads.V10.Common.BookOnGoogleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Common.PromotionAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          discount_type:
            {:percent_off, integer}
            | {:money_amount_off, Google.Ads.Googleads.V10.Common.Money.t() | nil},
          promotion_trigger:
            {:promotion_code, String.t()}
            | {:orders_over_amount, Google.Ads.Googleads.V10.Common.Money.t() | nil},
          promotion_target: String.t(),
          discount_modifier:
            Google.Ads.Googleads.V10.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier.t(),
          redemption_start_date: String.t(),
          redemption_end_date: String.t(),
          occasion:
            Google.Ads.Googleads.V10.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion.t(),
          language_code: String.t(),
          start_date: String.t(),
          end_date: String.t(),
          ad_schedule_targets: [Google.Ads.Googleads.V10.Common.AdScheduleInfo.t()]
        }

  defstruct discount_type: nil,
            promotion_trigger: nil,
            promotion_target: "",
            discount_modifier: :UNSPECIFIED,
            redemption_start_date: "",
            redemption_end_date: "",
            occasion: :UNSPECIFIED,
            language_code: "",
            start_date: "",
            end_date: "",
            ad_schedule_targets: []

  oneof :discount_type, 0
  oneof :promotion_trigger, 1

  field :promotion_target, 1, type: :string, json_name: "promotionTarget", deprecated: false

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V10.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    json_name: "discountModifier",
    enum: true

  field :redemption_start_date, 7, type: :string, json_name: "redemptionStartDate"
  field :redemption_end_date, 8, type: :string, json_name: "redemptionEndDate"

  field :occasion, 9,
    type:
      Google.Ads.Googleads.V10.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :language_code, 10, type: :string, json_name: "languageCode"
  field :start_date, 11, type: :string, json_name: "startDate"
  field :end_date, 12, type: :string, json_name: "endDate"

  field :ad_schedule_targets, 13,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"

  field :percent_off, 3, type: :int64, json_name: "percentOff", oneof: 0

  field :money_amount_off, 4,
    type: Google.Ads.Googleads.V10.Common.Money,
    json_name: "moneyAmountOff",
    oneof: 0

  field :promotion_code, 5, type: :string, json_name: "promotionCode", oneof: 1

  field :orders_over_amount, 6,
    type: Google.Ads.Googleads.V10.Common.Money,
    json_name: "ordersOverAmount",
    oneof: 1
end
defmodule Google.Ads.Googleads.V10.Common.CalloutAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          callout_text: String.t(),
          start_date: String.t(),
          end_date: String.t(),
          ad_schedule_targets: [Google.Ads.Googleads.V10.Common.AdScheduleInfo.t()]
        }

  defstruct callout_text: "",
            start_date: "",
            end_date: "",
            ad_schedule_targets: []

  field :callout_text, 1, type: :string, json_name: "calloutText", deprecated: false
  field :start_date, 2, type: :string, json_name: "startDate"
  field :end_date, 3, type: :string, json_name: "endDate"

  field :ad_schedule_targets, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"
end
defmodule Google.Ads.Googleads.V10.Common.StructuredSnippetAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          values: [String.t()]
        }

  defstruct header: "",
            values: []

  field :header, 1, type: :string, deprecated: false
  field :values, 2, repeated: true, type: :string, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Common.SitelinkAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_text: String.t(),
          description1: String.t(),
          description2: String.t(),
          start_date: String.t(),
          end_date: String.t(),
          ad_schedule_targets: [Google.Ads.Googleads.V10.Common.AdScheduleInfo.t()]
        }

  defstruct link_text: "",
            description1: "",
            description2: "",
            start_date: "",
            end_date: "",
            ad_schedule_targets: []

  field :link_text, 1, type: :string, json_name: "linkText", deprecated: false
  field :description1, 2, type: :string
  field :description2, 3, type: :string
  field :start_date, 4, type: :string, json_name: "startDate"
  field :end_date, 5, type: :string, json_name: "endDate"

  field :ad_schedule_targets, 6,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"
end
defmodule Google.Ads.Googleads.V10.Common.PageFeedAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_url: String.t(),
          labels: [String.t()]
        }

  defstruct page_url: "",
            labels: []

  field :page_url, 1, type: :string, json_name: "pageUrl", deprecated: false
  field :labels, 2, repeated: true, type: :string
end
defmodule Google.Ads.Googleads.V10.Common.DynamicEducationAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          program_id: String.t(),
          location_id: String.t(),
          program_name: String.t(),
          subject: String.t(),
          program_description: String.t(),
          school_name: String.t(),
          address: String.t(),
          contextual_keywords: [String.t()],
          android_app_link: String.t(),
          similar_program_ids: [String.t()],
          ios_app_link: String.t(),
          ios_app_store_id: integer,
          thumbnail_image_url: String.t(),
          image_url: String.t()
        }

  defstruct program_id: "",
            location_id: "",
            program_name: "",
            subject: "",
            program_description: "",
            school_name: "",
            address: "",
            contextual_keywords: [],
            android_app_link: "",
            similar_program_ids: [],
            ios_app_link: "",
            ios_app_store_id: 0,
            thumbnail_image_url: "",
            image_url: ""

  field :program_id, 1, type: :string, json_name: "programId", deprecated: false
  field :location_id, 2, type: :string, json_name: "locationId"
  field :program_name, 3, type: :string, json_name: "programName", deprecated: false
  field :subject, 4, type: :string
  field :program_description, 5, type: :string, json_name: "programDescription"
  field :school_name, 6, type: :string, json_name: "schoolName"
  field :address, 7, type: :string
  field :contextual_keywords, 8, repeated: true, type: :string, json_name: "contextualKeywords"
  field :android_app_link, 9, type: :string, json_name: "androidAppLink"
  field :similar_program_ids, 10, repeated: true, type: :string, json_name: "similarProgramIds"
  field :ios_app_link, 11, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 12, type: :int64, json_name: "iosAppStoreId"
  field :thumbnail_image_url, 13, type: :string, json_name: "thumbnailImageUrl"
  field :image_url, 14, type: :string, json_name: "imageUrl"
end
defmodule Google.Ads.Googleads.V10.Common.MobileAppAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: String.t(),
          app_store: Google.Ads.Googleads.V10.Enums.MobileAppVendorEnum.MobileAppVendor.t(),
          link_text: String.t(),
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct app_id: "",
            app_store: :UNSPECIFIED,
            link_text: "",
            start_date: "",
            end_date: ""

  field :app_id, 1, type: :string, json_name: "appId", deprecated: false

  field :app_store, 2,
    type: Google.Ads.Googleads.V10.Enums.MobileAppVendorEnum.MobileAppVendor,
    json_name: "appStore",
    enum: true,
    deprecated: false

  field :link_text, 3, type: :string, json_name: "linkText", deprecated: false
  field :start_date, 4, type: :string, json_name: "startDate"
  field :end_date, 5, type: :string, json_name: "endDate"
end
defmodule Google.Ads.Googleads.V10.Common.HotelCalloutAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          language_code: String.t()
        }

  defstruct text: "",
            language_code: ""

  field :text, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Common.CallAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_code: String.t(),
          phone_number: String.t(),
          call_conversion_reporting_state:
            Google.Ads.Googleads.V10.Enums.CallConversionReportingStateEnum.CallConversionReportingState.t(),
          call_conversion_action: String.t(),
          ad_schedule_targets: [Google.Ads.Googleads.V10.Common.AdScheduleInfo.t()]
        }

  defstruct country_code: "",
            phone_number: "",
            call_conversion_reporting_state: :UNSPECIFIED,
            call_conversion_action: "",
            ad_schedule_targets: []

  field :country_code, 1, type: :string, json_name: "countryCode", deprecated: false
  field :phone_number, 2, type: :string, json_name: "phoneNumber", deprecated: false

  field :call_conversion_reporting_state, 3,
    type:
      Google.Ads.Googleads.V10.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    json_name: "callConversionReportingState",
    enum: true

  field :call_conversion_action, 4,
    type: :string,
    json_name: "callConversionAction",
    deprecated: false

  field :ad_schedule_targets, 5,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"
end
defmodule Google.Ads.Googleads.V10.Common.PriceAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V10.Enums.PriceExtensionTypeEnum.PriceExtensionType.t(),
          price_qualifier:
            Google.Ads.Googleads.V10.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier.t(),
          language_code: String.t(),
          price_offerings: [Google.Ads.Googleads.V10.Common.PriceOffering.t()]
        }

  defstruct type: :UNSPECIFIED,
            price_qualifier: :UNSPECIFIED,
            language_code: "",
            price_offerings: []

  field :type, 1,
    type: Google.Ads.Googleads.V10.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true,
    deprecated: false

  field :price_qualifier, 2,
    type:
      Google.Ads.Googleads.V10.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    json_name: "priceQualifier",
    enum: true

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :price_offerings, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.PriceOffering,
    json_name: "priceOfferings"
end
defmodule Google.Ads.Googleads.V10.Common.PriceOffering do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          description: String.t(),
          price: Google.Ads.Googleads.V10.Common.Money.t() | nil,
          unit:
            Google.Ads.Googleads.V10.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit.t(),
          final_url: String.t(),
          final_mobile_url: String.t()
        }

  defstruct header: "",
            description: "",
            price: nil,
            unit: :UNSPECIFIED,
            final_url: "",
            final_mobile_url: ""

  field :header, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :price, 3, type: Google.Ads.Googleads.V10.Common.Money, deprecated: false

  field :unit, 4,
    type: Google.Ads.Googleads.V10.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_url, 5, type: :string, json_name: "finalUrl", deprecated: false
  field :final_mobile_url, 6, type: :string, json_name: "finalMobileUrl"
end
defmodule Google.Ads.Googleads.V10.Common.CallToActionAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_to_action: Google.Ads.Googleads.V10.Enums.CallToActionTypeEnum.CallToActionType.t()
        }

  defstruct call_to_action: :UNSPECIFIED

  field :call_to_action, 1,
    type: Google.Ads.Googleads.V10.Enums.CallToActionTypeEnum.CallToActionType,
    json_name: "callToAction",
    enum: true
end
