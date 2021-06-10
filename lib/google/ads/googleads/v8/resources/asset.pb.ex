defmodule Google.Ads.Googleads.V8.Resources.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset_data: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V8.Enums.AssetTypeEnum.AssetType.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V8.Common.CustomParameter.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          policy_summary: Google.Ads.Googleads.V8.Resources.AssetPolicySummary.t() | nil
        }

  defstruct [
    :asset_data,
    :resource_name,
    :id,
    :name,
    :type,
    :final_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :url_custom_parameters,
    :final_url_suffix,
    :policy_summary
  ]

  oneof :asset_data, 0
  field :resource_name, 1, type: :string
  field :id, 11, type: Google.Protobuf.Int64Value
  field :name, 12, type: Google.Protobuf.StringValue
  field :type, 4, type: Google.Ads.Googleads.V8.Enums.AssetTypeEnum.AssetType, enum: true
  field :final_urls, 14, repeated: true, type: :string
  field :final_mobile_urls, 16, repeated: true, type: :string
  field :tracking_url_template, 17, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 18,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :final_url_suffix, 19, type: Google.Protobuf.StringValue
  field :policy_summary, 13, type: Google.Ads.Googleads.V8.Resources.AssetPolicySummary
  field :youtube_video_asset, 5, type: Google.Ads.Googleads.V8.Common.YoutubeVideoAsset, oneof: 0
  field :media_bundle_asset, 6, type: Google.Ads.Googleads.V8.Common.MediaBundleAsset, oneof: 0
  field :image_asset, 7, type: Google.Ads.Googleads.V8.Common.ImageAsset, oneof: 0
  field :text_asset, 8, type: Google.Ads.Googleads.V8.Common.TextAsset, oneof: 0
  field :lead_form_asset, 9, type: Google.Ads.Googleads.V8.Common.LeadFormAsset, oneof: 0

  field :book_on_google_asset, 10,
    type: Google.Ads.Googleads.V8.Common.BookOnGoogleAsset,
    oneof: 0

  field :promotion_asset, 15, type: Google.Ads.Googleads.V8.Common.PromotionAsset, oneof: 0
  field :callout_asset, 20, type: Google.Ads.Googleads.V8.Common.CalloutAsset, oneof: 0

  field :structured_snippet_asset, 21,
    type: Google.Ads.Googleads.V8.Common.StructuredSnippetAsset,
    oneof: 0

  field :sitelink_asset, 22, type: Google.Ads.Googleads.V8.Common.SitelinkAsset, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Resources.AssetPolicySummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_topic_entries: [Google.Ads.Googleads.V8.Common.PolicyTopicEntry.t()],
          review_status:
            Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus.t(),
          approval_status:
            Google.Ads.Googleads.V8.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus.t()
        }

  defstruct [:policy_topic_entries, :review_status, :approval_status]

  field :policy_topic_entries, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.PolicyTopicEntry

  field :review_status, 2,
    type: Google.Ads.Googleads.V8.Enums.PolicyReviewStatusEnum.PolicyReviewStatus,
    enum: true

  field :approval_status, 3,
    type: Google.Ads.Googleads.V8.Enums.PolicyApprovalStatusEnum.PolicyApprovalStatus,
    enum: true
end
