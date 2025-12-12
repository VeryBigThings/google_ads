defmodule Google.Ads.Googleads.V7.Resources.AdGroupCriterion.QualityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :quality_score, 5, type: :int32

  field :creative_quality_score, 2,
    type: Google.Ads.Googleads.V7.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :post_click_quality_score, 3,
    type: Google.Ads.Googleads.V7.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :search_predicted_ctr, 4,
    type: Google.Ads.Googleads.V7.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Resources.AdGroupCriterion.PositionEstimates do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :first_page_cpc_micros, 6, type: :int64
  field :first_position_cpc_micros, 7, type: :int64
  field :top_of_page_cpc_micros, 8, type: :int64
  field :estimated_add_clicks_at_first_position_cpc, 9, type: :int64
  field :estimated_add_cost_at_first_position_cpc, 10, type: :int64
end

defmodule Google.Ads.Googleads.V7.Resources.AdGroupCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :criterion, 0

  field :resource_name, 1, type: :string
  field :criterion_id, 56, type: :int64
  field :display_name, 77, type: :string

  field :status, 3,
    type: Google.Ads.Googleads.V7.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus,
    enum: true

  field :quality_info, 4, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion.QualityInfo
  field :ad_group, 57, type: :string
  field :type, 25, type: Google.Ads.Googleads.V7.Enums.CriterionTypeEnum.CriterionType, enum: true
  field :negative, 58, type: :bool

  field :system_serving_status, 52,
    type:
      Google.Ads.Googleads.V7.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus,
    enum: true

  field :approval_status, 53,
    type:
      Google.Ads.Googleads.V7.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus,
    enum: true

  field :disapproval_reasons, 59, repeated: true, type: :string
  field :labels, 60, repeated: true, type: :string
  field :bid_modifier, 61, type: :double
  field :cpc_bid_micros, 62, type: :int64
  field :cpm_bid_micros, 63, type: :int64
  field :cpv_bid_micros, 64, type: :int64
  field :percent_cpc_bid_micros, 65, type: :int64
  field :effective_cpc_bid_micros, 66, type: :int64
  field :effective_cpm_bid_micros, 67, type: :int64
  field :effective_cpv_bid_micros, 68, type: :int64
  field :effective_percent_cpc_bid_micros, 69, type: :int64

  field :effective_cpc_bid_source, 21,
    type: Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_cpm_bid_source, 22,
    type: Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_cpv_bid_source, 23,
    type: Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_percent_cpc_bid_source, 35,
    type: Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :position_estimates, 10,
    type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion.PositionEstimates

  field :final_urls, 70, repeated: true, type: :string
  field :final_mobile_urls, 71, repeated: true, type: :string
  field :final_url_suffix, 72, type: :string
  field :tracking_url_template, 73, type: :string

  field :url_custom_parameters, 14,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.CustomParameter

  field :keyword, 27, type: Google.Ads.Googleads.V7.Common.KeywordInfo, oneof: 0
  field :placement, 28, type: Google.Ads.Googleads.V7.Common.PlacementInfo, oneof: 0

  field :mobile_app_category, 29,
    type: Google.Ads.Googleads.V7.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 30,
    type: Google.Ads.Googleads.V7.Common.MobileApplicationInfo,
    oneof: 0

  field :listing_group, 32, type: Google.Ads.Googleads.V7.Common.ListingGroupInfo, oneof: 0
  field :age_range, 36, type: Google.Ads.Googleads.V7.Common.AgeRangeInfo, oneof: 0
  field :gender, 37, type: Google.Ads.Googleads.V7.Common.GenderInfo, oneof: 0
  field :income_range, 38, type: Google.Ads.Googleads.V7.Common.IncomeRangeInfo, oneof: 0
  field :parental_status, 39, type: Google.Ads.Googleads.V7.Common.ParentalStatusInfo, oneof: 0
  field :user_list, 42, type: Google.Ads.Googleads.V7.Common.UserListInfo, oneof: 0
  field :youtube_video, 40, type: Google.Ads.Googleads.V7.Common.YouTubeVideoInfo, oneof: 0
  field :youtube_channel, 41, type: Google.Ads.Googleads.V7.Common.YouTubeChannelInfo, oneof: 0
  field :topic, 43, type: Google.Ads.Googleads.V7.Common.TopicInfo, oneof: 0
  field :user_interest, 45, type: Google.Ads.Googleads.V7.Common.UserInterestInfo, oneof: 0
  field :webpage, 46, type: Google.Ads.Googleads.V7.Common.WebpageInfo, oneof: 0
  field :app_payment_model, 47, type: Google.Ads.Googleads.V7.Common.AppPaymentModelInfo, oneof: 0
  field :custom_affinity, 48, type: Google.Ads.Googleads.V7.Common.CustomAffinityInfo, oneof: 0
  field :custom_intent, 49, type: Google.Ads.Googleads.V7.Common.CustomIntentInfo, oneof: 0
  field :custom_audience, 74, type: Google.Ads.Googleads.V7.Common.CustomAudienceInfo, oneof: 0

  field :combined_audience, 75,
    type: Google.Ads.Googleads.V7.Common.CombinedAudienceInfo,
    oneof: 0
end
