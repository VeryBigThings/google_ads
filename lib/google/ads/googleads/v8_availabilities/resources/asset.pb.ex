defmodule Google.Ads.Googleads.V8Availabilities.Resources.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :asset_data, 0

  field :resource_name, 1, type: :string
  field :id, 11, type: :int64
  field :name, 12, type: :string
  field :type, 4, type: Google.Ads.Googleads.V8Availabilities.Enums.AssetTypeEnum.AssetType, enum: true
  field :final_urls, 14, repeated: true, type: :string
  field :final_mobile_urls, 16, repeated: true, type: :string
  field :tracking_url_template, 17, type: :string

  field :url_custom_parameters, 18,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.CustomParameter

  field :final_url_suffix, 19, type: :string
  field :policy_summary, 13, type: Google.Ads.Googleads.V8Availabilities.Resources.AssetPolicySummary
  field :youtube_video_asset, 5, type: Google.Ads.Googleads.V8Availabilities.Common.YoutubeVideoAsset, oneof: 0
  field :media_bundle_asset, 6, type: Google.Ads.Googleads.V8Availabilities.Common.MediaBundleAsset, oneof: 0
  field :image_asset, 7, type: Google.Ads.Googleads.V8Availabilities.Common.ImageAsset, oneof: 0
  field :text_asset, 8, type: Google.Ads.Googleads.V8Availabilities.Common.TextAsset, oneof: 0
  field :lead_form_asset, 9, type: Google.Ads.Googleads.V8Availabilities.Common.LeadFormAsset, oneof: 0

  field :book_on_google_asset, 10,
    type: Google.Ads.Googleads.V8Availabilities.Common.BookOnGoogleAsset,
    oneof: 0

  field :promotion_asset, 15, type: Google.Ads.Googleads.V8Availabilities.Common.PromotionAsset, oneof: 0
  field :callout_asset, 20, type: Google.Ads.Googleads.V8Availabilities.Common.CalloutAsset, oneof: 0

  field :structured_snippet_asset, 21,
    type: Google.Ads.Googleads.V8Availabilities.Common.StructuredSnippetAsset,
    oneof: 0

  field :sitelink_asset, 22, type: Google.Ads.Googleads.V8Availabilities.Common.SitelinkAsset, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.AssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyTopicEntry

  field :review_status, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
