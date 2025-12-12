defmodule Google.Ads.Googleads.V8.Common.YoutubeVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :youtube_video_id, 2, optional: true, type: :string
  field :youtube_video_title, 3, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.MediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :data, 2, optional: true, type: :bytes
end

defmodule Google.Ads.Googleads.V8.Common.ImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :data, 5, optional: true, type: :bytes
  field :file_size, 6, optional: true, type: :int64

  field :mime_type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.MimeTypeEnum.MimeType,
    enum: true

  field :full_size, 4, optional: true, type: Google.Ads.Googleads.V8.Common.ImageDimension
end

defmodule Google.Ads.Googleads.V8.Common.ImageDimension do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :height_pixels, 4, optional: true, type: :int64
  field :width_pixels, 5, optional: true, type: :int64
  field :url, 6, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.TextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :text, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LeadFormAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :business_name, 10, required: true, type: :string

  field :call_to_action_type, 17,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.LeadFormCallToActionTypeEnum.LeadFormCallToActionType,
    enum: true

  field :call_to_action_description, 18, required: true, type: :string
  field :headline, 12, required: true, type: :string
  field :description, 13, required: true, type: :string
  field :privacy_policy_url, 14, required: true, type: :string
  field :post_submit_headline, 15, optional: true, type: :string
  field :post_submit_description, 16, optional: true, type: :string
  field :fields, 8, repeated: true, type: Google.Ads.Googleads.V8.Common.LeadFormField

  field :delivery_methods, 9,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.LeadFormDeliveryMethod

  field :post_submit_call_to_action_type, 19,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.LeadFormPostSubmitCallToActionTypeEnum.LeadFormPostSubmitCallToActionType,
    enum: true

  field :background_image_asset, 20, optional: true, type: :string

  field :desired_intent, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.LeadFormDesiredIntentEnum.LeadFormDesiredIntent,
    enum: true

  field :custom_disclosure, 22, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LeadFormField do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :answers, 0

  field :input_type, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType,
    enum: true

  field :single_choice_answers, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.LeadFormSingleChoiceAnswers,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.LeadFormSingleChoiceAnswers do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :answers, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.LeadFormDeliveryMethod do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :delivery_details, 0

  field :webhook, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.WebhookDelivery,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Common.WebhookDelivery do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :advertiser_webhook_url, 4, optional: true, type: :string
  field :google_secret, 5, optional: true, type: :string
  field :payload_schema_version, 6, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Common.BookOnGoogleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Common.PromotionAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :discount_type, 0
  oneof :promotion_trigger, 1
  field :promotion_target, 1, optional: true, type: :string

  field :discount_modifier, 2,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :redemption_start_date, 7, optional: true, type: :string
  field :redemption_end_date, 8, optional: true, type: :string

  field :occasion, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :language_code, 10, optional: true, type: :string
  field :start_date, 11, optional: true, type: :string
  field :end_date, 12, optional: true, type: :string

  field :ad_schedule_targets, 13,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.AdScheduleInfo

  field :percent_off, 3, optional: true, type: :int64, oneof: 0
  field :money_amount_off, 4, optional: true, type: Google.Ads.Googleads.V8.Common.Money, oneof: 0
  field :promotion_code, 5, optional: true, type: :string, oneof: 1

  field :orders_over_amount, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.Money,
    oneof: 1
end

defmodule Google.Ads.Googleads.V8.Common.CalloutAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :callout_text, 1, optional: true, type: :string
  field :start_date, 2, optional: true, type: :string
  field :end_date, 3, optional: true, type: :string

  field :ad_schedule_targets, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.AdScheduleInfo
end

defmodule Google.Ads.Googleads.V8.Common.StructuredSnippetAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :header, 1, optional: true, type: :string
  field :values, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Common.SitelinkAsset do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :link_text, 1, optional: true, type: :string
  field :description1, 2, optional: true, type: :string
  field :description2, 3, optional: true, type: :string
  field :start_date, 4, optional: true, type: :string
  field :end_date, 5, optional: true, type: :string

  field :ad_schedule_targets, 6,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.AdScheduleInfo
end
