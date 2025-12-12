defmodule Google.Ads.Googleads.V8Availabilities.Common.YoutubeVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :youtube_video_id, 2, type: :string
  field :youtube_video_title, 3, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.MediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :data, 2, type: :bytes
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.ImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :data, 5, type: :bytes
  field :file_size, 6, type: :int64
  field :mime_type, 3, type: Google.Ads.Googleads.V8Availabilities.Enums.MimeTypeEnum.MimeType, enum: true
  field :full_size, 4, type: Google.Ads.Googleads.V8Availabilities.Common.ImageDimension
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.ImageDimension do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :height_pixels, 4, type: :int64
  field :width_pixels, 5, type: :int64
  field :url, 6, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.TextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :text, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.LeadFormAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :business_name, 10, type: :string

  field :call_to_action_type, 17,
    type: Google.Ads.Googleads.V8Availabilities.Enums.LeadFormCallToActionTypeEnum.LeadFormCallToActionType,
    enum: true

  field :call_to_action_description, 18, type: :string
  field :headline, 12, type: :string
  field :description, 13, type: :string
  field :privacy_policy_url, 14, type: :string
  field :post_submit_headline, 15, type: :string
  field :post_submit_description, 16, type: :string
  field :fields, 8, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.LeadFormField

  field :delivery_methods, 9,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.LeadFormDeliveryMethod

  field :post_submit_call_to_action_type, 19,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.LeadFormPostSubmitCallToActionTypeEnum.LeadFormPostSubmitCallToActionType,
    enum: true

  field :background_image_asset, 20, type: :string

  field :desired_intent, 21,
    type: Google.Ads.Googleads.V8Availabilities.Enums.LeadFormDesiredIntentEnum.LeadFormDesiredIntent,
    enum: true

  field :custom_disclosure, 22, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.LeadFormField do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :answers, 0

  field :input_type, 1,
    type: Google.Ads.Googleads.V8Availabilities.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType,
    enum: true

  field :single_choice_answers, 2,
    type: Google.Ads.Googleads.V8Availabilities.Common.LeadFormSingleChoiceAnswers,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.LeadFormSingleChoiceAnswers do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :answers, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.LeadFormDeliveryMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :delivery_details, 0

  field :webhook, 1, type: Google.Ads.Googleads.V8Availabilities.Common.WebhookDelivery, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.WebhookDelivery do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :advertiser_webhook_url, 4, type: :string
  field :google_secret, 5, type: :string
  field :payload_schema_version, 6, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.BookOnGoogleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V8Availabilities.Common.PromotionAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :discount_type, 0
  oneof :promotion_trigger, 1

  field :promotion_target, 1, type: :string

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :redemption_start_date, 7, type: :string
  field :redemption_end_date, 8, type: :string

  field :occasion, 9,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :language_code, 10, type: :string
  field :start_date, 11, type: :string
  field :end_date, 12, type: :string

  field :ad_schedule_targets, 13,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo

  field :percent_off, 3, type: :int64, oneof: 0
  field :money_amount_off, 4, type: Google.Ads.Googleads.V8Availabilities.Common.Money, oneof: 0
  field :promotion_code, 5, type: :string, oneof: 1
  field :orders_over_amount, 6, type: Google.Ads.Googleads.V8Availabilities.Common.Money, oneof: 1
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.CalloutAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :callout_text, 1, type: :string
  field :start_date, 2, type: :string
  field :end_date, 3, type: :string

  field :ad_schedule_targets, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.StructuredSnippetAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :header, 1, type: :string
  field :values, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Common.SitelinkAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :link_text, 1, type: :string
  field :description1, 2, type: :string
  field :description2, 3, type: :string
  field :start_date, 4, type: :string
  field :end_date, 5, type: :string

  field :ad_schedule_targets, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo
end
