defmodule Google.Ads.Googleads.V7.Resources.AdGroupCriterion.QualityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quality_score: integer,
          creative_quality_score:
            Google.Ads.Googleads.V7.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          post_click_quality_score:
            Google.Ads.Googleads.V7.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          search_predicted_ctr:
            Google.Ads.Googleads.V7.Enums.QualityScoreBucketEnum.QualityScoreBucket.t()
        }
  defstruct [
    :quality_score,
    :creative_quality_score,
    :post_click_quality_score,
    :search_predicted_ctr
  ]

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

  @type t :: %__MODULE__{
          first_page_cpc_micros: integer,
          first_position_cpc_micros: integer,
          top_of_page_cpc_micros: integer,
          estimated_add_clicks_at_first_position_cpc: integer,
          estimated_add_cost_at_first_position_cpc: integer
        }
  defstruct [
    :first_page_cpc_micros,
    :first_position_cpc_micros,
    :top_of_page_cpc_micros,
    :estimated_add_clicks_at_first_position_cpc,
    :estimated_add_cost_at_first_position_cpc
  ]

  field :first_page_cpc_micros, 6, type: :int64
  field :first_position_cpc_micros, 7, type: :int64
  field :top_of_page_cpc_micros, 8, type: :int64
  field :estimated_add_clicks_at_first_position_cpc, 9, type: :int64
  field :estimated_add_cost_at_first_position_cpc, 10, type: :int64
end

defmodule Google.Ads.Googleads.V7.Resources.AdGroupCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          criterion_id: integer,
          display_name: String.t(),
          status:
            Google.Ads.Googleads.V7.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus.t(),
          quality_info: Google.Ads.Googleads.V7.Resources.AdGroupCriterion.QualityInfo.t() | nil,
          ad_group: String.t(),
          type: Google.Ads.Googleads.V7.Enums.CriterionTypeEnum.CriterionType.t(),
          negative: boolean,
          system_serving_status:
            Google.Ads.Googleads.V7.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus.t(),
          approval_status:
            Google.Ads.Googleads.V7.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus.t(),
          disapproval_reasons: [String.t()],
          labels: [String.t()],
          bid_modifier: float | :infinity | :negative_infinity | :nan,
          cpc_bid_micros: integer,
          cpm_bid_micros: integer,
          cpv_bid_micros: integer,
          percent_cpc_bid_micros: integer,
          effective_cpc_bid_micros: integer,
          effective_cpm_bid_micros: integer,
          effective_cpv_bid_micros: integer,
          effective_percent_cpc_bid_micros: integer,
          effective_cpc_bid_source:
            Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_cpm_bid_source:
            Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_cpv_bid_source:
            Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_percent_cpc_bid_source:
            Google.Ads.Googleads.V7.Enums.BiddingSourceEnum.BiddingSource.t(),
          position_estimates:
            Google.Ads.Googleads.V7.Resources.AdGroupCriterion.PositionEstimates.t() | nil,
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          final_url_suffix: String.t(),
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V7.Common.CustomParameter.t()]
        }
  defstruct [
    :criterion,
    :resource_name,
    :criterion_id,
    :display_name,
    :status,
    :quality_info,
    :ad_group,
    :type,
    :negative,
    :system_serving_status,
    :approval_status,
    :disapproval_reasons,
    :labels,
    :bid_modifier,
    :cpc_bid_micros,
    :cpm_bid_micros,
    :cpv_bid_micros,
    :percent_cpc_bid_micros,
    :effective_cpc_bid_micros,
    :effective_cpm_bid_micros,
    :effective_cpv_bid_micros,
    :effective_percent_cpc_bid_micros,
    :effective_cpc_bid_source,
    :effective_cpm_bid_source,
    :effective_cpv_bid_source,
    :effective_percent_cpc_bid_source,
    :position_estimates,
    :final_urls,
    :final_mobile_urls,
    :final_url_suffix,
    :tracking_url_template,
    :url_custom_parameters
  ]

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
