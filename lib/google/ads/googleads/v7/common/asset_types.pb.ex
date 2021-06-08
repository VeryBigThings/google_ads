defmodule Google.Ads.Googleads.V7.Common.YoutubeVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          youtube_video_id: String.t(),
          youtube_video_title: String.t()
        }
  defstruct [:youtube_video_id, :youtube_video_title]

  field :youtube_video_id, 2, type: :string
  field :youtube_video_title, 3, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.MediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }
  defstruct [:data]

  field :data, 2, type: :bytes
end

defmodule Google.Ads.Googleads.V7.Common.ImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          file_size: integer,
          mime_type: Google.Ads.Googleads.V7.Enums.MimeTypeEnum.MimeType.t(),
          full_size: Google.Ads.Googleads.V7.Common.ImageDimension.t() | nil
        }
  defstruct [:data, :file_size, :mime_type, :full_size]

  field :data, 5, type: :bytes
  field :file_size, 6, type: :int64
  field :mime_type, 3, type: Google.Ads.Googleads.V7.Enums.MimeTypeEnum.MimeType, enum: true
  field :full_size, 4, type: Google.Ads.Googleads.V7.Common.ImageDimension
end

defmodule Google.Ads.Googleads.V7.Common.ImageDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          height_pixels: integer,
          width_pixels: integer,
          url: String.t()
        }
  defstruct [:height_pixels, :width_pixels, :url]

  field :height_pixels, 4, type: :int64
  field :width_pixels, 5, type: :int64
  field :url, 6, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.TextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t()
        }
  defstruct [:text]

  field :text, 2, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.LeadFormAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: String.t(),
          call_to_action_type:
            Google.Ads.Googleads.V7.Enums.LeadFormCallToActionTypeEnum.LeadFormCallToActionType.t(),
          call_to_action_description: String.t(),
          headline: String.t(),
          description: String.t(),
          privacy_policy_url: String.t(),
          post_submit_headline: String.t(),
          post_submit_description: String.t(),
          fields: [Google.Ads.Googleads.V7.Common.LeadFormField.t()],
          delivery_methods: [Google.Ads.Googleads.V7.Common.LeadFormDeliveryMethod.t()],
          post_submit_call_to_action_type:
            Google.Ads.Googleads.V7.Enums.LeadFormPostSubmitCallToActionTypeEnum.LeadFormPostSubmitCallToActionType.t(),
          background_image_asset: String.t(),
          desired_intent:
            Google.Ads.Googleads.V7.Enums.LeadFormDesiredIntentEnum.LeadFormDesiredIntent.t(),
          custom_disclosure: String.t()
        }
  defstruct [
    :business_name,
    :call_to_action_type,
    :call_to_action_description,
    :headline,
    :description,
    :privacy_policy_url,
    :post_submit_headline,
    :post_submit_description,
    :fields,
    :delivery_methods,
    :post_submit_call_to_action_type,
    :background_image_asset,
    :desired_intent,
    :custom_disclosure
  ]

  field :business_name, 10, type: :string

  field :call_to_action_type, 17,
    type: Google.Ads.Googleads.V7.Enums.LeadFormCallToActionTypeEnum.LeadFormCallToActionType,
    enum: true

  field :call_to_action_description, 18, type: :string
  field :headline, 12, type: :string
  field :description, 13, type: :string
  field :privacy_policy_url, 14, type: :string
  field :post_submit_headline, 15, type: :string
  field :post_submit_description, 16, type: :string
  field :fields, 8, repeated: true, type: Google.Ads.Googleads.V7.Common.LeadFormField

  field :delivery_methods, 9,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.LeadFormDeliveryMethod

  field :post_submit_call_to_action_type, 19,
    type:
      Google.Ads.Googleads.V7.Enums.LeadFormPostSubmitCallToActionTypeEnum.LeadFormPostSubmitCallToActionType,
    enum: true

  field :background_image_asset, 20, type: :string

  field :desired_intent, 21,
    type: Google.Ads.Googleads.V7.Enums.LeadFormDesiredIntentEnum.LeadFormDesiredIntent,
    enum: true

  field :custom_disclosure, 22, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.LeadFormField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answers: {atom, any},
          input_type:
            Google.Ads.Googleads.V7.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType.t()
        }
  defstruct [:answers, :input_type]

  oneof :answers, 0

  field :input_type, 1,
    type: Google.Ads.Googleads.V7.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType,
    enum: true

  field :single_choice_answers, 2,
    type: Google.Ads.Googleads.V7.Common.LeadFormSingleChoiceAnswers,
    oneof: 0
end

defmodule Google.Ads.Googleads.V7.Common.LeadFormSingleChoiceAnswers do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answers: [String.t()]
        }
  defstruct [:answers]

  field :answers, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.LeadFormDeliveryMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delivery_details: {atom, any}
        }
  defstruct [:delivery_details]

  oneof :delivery_details, 0

  field :webhook, 1, type: Google.Ads.Googleads.V7.Common.WebhookDelivery, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Common.WebhookDelivery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          advertiser_webhook_url: String.t(),
          google_secret: String.t(),
          payload_schema_version: integer
        }
  defstruct [:advertiser_webhook_url, :google_secret, :payload_schema_version]

  field :advertiser_webhook_url, 4, type: :string
  field :google_secret, 5, type: :string
  field :payload_schema_version, 6, type: :int64
end

defmodule Google.Ads.Googleads.V7.Common.BookOnGoogleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V7.Common.PromotionAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          discount_type: {atom, any},
          promotion_trigger: {atom, any},
          promotion_target: String.t(),
          discount_modifier:
            Google.Ads.Googleads.V7.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier.t(),
          redemption_start_date: String.t(),
          redemption_end_date: String.t(),
          occasion:
            Google.Ads.Googleads.V7.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion.t(),
          language_code: String.t(),
          start_date: String.t(),
          end_date: String.t(),
          ad_schedule_targets: [Google.Ads.Googleads.V7.Common.AdScheduleInfo.t()]
        }
  defstruct [
    :discount_type,
    :promotion_trigger,
    :promotion_target,
    :discount_modifier,
    :redemption_start_date,
    :redemption_end_date,
    :occasion,
    :language_code,
    :start_date,
    :end_date,
    :ad_schedule_targets
  ]

  oneof :discount_type, 0
  oneof :promotion_trigger, 1

  field :promotion_target, 1, type: :string

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V7.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :redemption_start_date, 7, type: :string
  field :redemption_end_date, 8, type: :string

  field :occasion, 9,
    type: Google.Ads.Googleads.V7.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :language_code, 10, type: :string
  field :start_date, 11, type: :string
  field :end_date, 12, type: :string

  field :ad_schedule_targets, 13,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.AdScheduleInfo

  field :percent_off, 3, type: :int64, oneof: 0
  field :money_amount_off, 4, type: Google.Ads.Googleads.V7.Common.Money, oneof: 0
  field :promotion_code, 5, type: :string, oneof: 1
  field :orders_over_amount, 6, type: Google.Ads.Googleads.V7.Common.Money, oneof: 1
end

defmodule Google.Ads.Googleads.V7.Common.CalloutAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          callout_text: String.t(),
          start_date: String.t(),
          end_date: String.t(),
          ad_schedule_targets: [Google.Ads.Googleads.V7.Common.AdScheduleInfo.t()]
        }
  defstruct [:callout_text, :start_date, :end_date, :ad_schedule_targets]

  field :callout_text, 1, type: :string
  field :start_date, 2, type: :string
  field :end_date, 3, type: :string

  field :ad_schedule_targets, 4,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.AdScheduleInfo
end

defmodule Google.Ads.Googleads.V7.Common.StructuredSnippetAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: String.t(),
          values: [String.t()]
        }
  defstruct [:header, :values]

  field :header, 1, type: :string
  field :values, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V7.Common.SitelinkAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_text: String.t(),
          description1: String.t(),
          description2: String.t(),
          start_date: String.t(),
          end_date: String.t(),
          ad_schedule_targets: [Google.Ads.Googleads.V7.Common.AdScheduleInfo.t()]
        }
  defstruct [
    :link_text,
    :description1,
    :description2,
    :start_date,
    :end_date,
    :ad_schedule_targets
  ]

  field :link_text, 1, type: :string
  field :description1, 2, type: :string
  field :description2, 3, type: :string
  field :start_date, 4, type: :string
  field :end_date, 5, type: :string

  field :ad_schedule_targets, 6,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.AdScheduleInfo
end
