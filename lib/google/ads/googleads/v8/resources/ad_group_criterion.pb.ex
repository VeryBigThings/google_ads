defmodule Google.Ads.Googleads.V8.Resources.AdGroupCriterion.QualityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          quality_score: integer,
          creative_quality_score:
            Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          post_click_quality_score:
            Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          search_predicted_ctr:
            Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket.t()
        }

  defstruct [
    :quality_score,
    :creative_quality_score,
    :post_click_quality_score,
    :search_predicted_ctr
  ]

  field :quality_score, 5, optional: true, type: :int32

  field :creative_quality_score, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :post_click_quality_score, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :search_predicted_ctr, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Resources.AdGroupCriterion.PositionEstimates do
  @moduledoc false
  use Protobuf, syntax: :proto2

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

  field :first_page_cpc_micros, 6, optional: true, type: :int64
  field :first_position_cpc_micros, 7, optional: true, type: :int64
  field :top_of_page_cpc_micros, 8, optional: true, type: :int64
  field :estimated_add_clicks_at_first_position_cpc, 9, optional: true, type: :int64
  field :estimated_add_cost_at_first_position_cpc, 10, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Resources.AdGroupCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          criterion_id: integer,
          display_name: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus.t(),
          quality_info: Google.Ads.Googleads.V8.Resources.AdGroupCriterion.QualityInfo.t() | nil,
          ad_group: String.t(),
          type: Google.Ads.Googleads.V8.Enums.CriterionTypeEnum.CriterionType.t(),
          negative: boolean,
          system_serving_status:
            Google.Ads.Googleads.V8.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus.t(),
          approval_status:
            Google.Ads.Googleads.V8.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus.t(),
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
            Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_cpm_bid_source:
            Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_cpv_bid_source:
            Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_percent_cpc_bid_source:
            Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource.t(),
          position_estimates:
            Google.Ads.Googleads.V8.Resources.AdGroupCriterion.PositionEstimates.t() | nil,
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          final_url_suffix: String.t(),
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V8.Common.CustomParameter.t()]
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
  field :resource_name, 1, optional: true, type: :string
  field :criterion_id, 56, optional: true, type: :int64
  field :display_name, 77, optional: true, type: :string

  field :status, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus,
    enum: true

  field :quality_info, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupCriterion.QualityInfo

  field :ad_group, 57, optional: true, type: :string

  field :type, 25,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CriterionTypeEnum.CriterionType,
    enum: true

  field :negative, 58, optional: true, type: :bool

  field :system_serving_status, 52,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus,
    enum: true

  field :approval_status, 53,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus,
    enum: true

  field :disapproval_reasons, 59, repeated: true, type: :string
  field :labels, 60, repeated: true, type: :string
  field :bid_modifier, 61, optional: true, type: :double
  field :cpc_bid_micros, 62, optional: true, type: :int64
  field :cpm_bid_micros, 63, optional: true, type: :int64
  field :cpv_bid_micros, 64, optional: true, type: :int64
  field :percent_cpc_bid_micros, 65, optional: true, type: :int64
  field :effective_cpc_bid_micros, 66, optional: true, type: :int64
  field :effective_cpm_bid_micros, 67, optional: true, type: :int64
  field :effective_cpv_bid_micros, 68, optional: true, type: :int64
  field :effective_percent_cpc_bid_micros, 69, optional: true, type: :int64

  field :effective_cpc_bid_source, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_cpm_bid_source, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_cpv_bid_source, 23,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_percent_cpc_bid_source, 35,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :position_estimates, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.AdGroupCriterion.PositionEstimates

  field :final_urls, 70, repeated: true, type: :string
  field :final_mobile_urls, 71, repeated: true, type: :string
  field :final_url_suffix, 72, optional: true, type: :string
  field :tracking_url_template, 73, optional: true, type: :string

  field :url_custom_parameters, 14,
    repeated: true,
    type: Google.Ads.Googleads.V8.Common.CustomParameter

  field :keyword, 27, optional: true, type: Google.Ads.Googleads.V8.Common.KeywordInfo, oneof: 0

  field :placement, 28,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PlacementInfo,
    oneof: 0

  field :mobile_app_category, 29,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 30,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileApplicationInfo,
    oneof: 0

  field :listing_group, 32,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ListingGroupInfo,
    oneof: 0

  field :age_range, 36,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AgeRangeInfo,
    oneof: 0

  field :gender, 37, optional: true, type: Google.Ads.Googleads.V8.Common.GenderInfo, oneof: 0

  field :income_range, 38,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.IncomeRangeInfo,
    oneof: 0

  field :parental_status, 39,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ParentalStatusInfo,
    oneof: 0

  field :user_list, 42,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.UserListInfo,
    oneof: 0

  field :youtube_video, 40,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.YouTubeVideoInfo,
    oneof: 0

  field :youtube_channel, 41,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.YouTubeChannelInfo,
    oneof: 0

  field :topic, 43, optional: true, type: Google.Ads.Googleads.V8.Common.TopicInfo, oneof: 0

  field :user_interest, 45,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.UserInterestInfo,
    oneof: 0

  field :webpage, 46, optional: true, type: Google.Ads.Googleads.V8.Common.WebpageInfo, oneof: 0

  field :app_payment_model, 47,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AppPaymentModelInfo,
    oneof: 0

  field :custom_affinity, 48,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CustomAffinityInfo,
    oneof: 0

  field :custom_intent, 49,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CustomIntentInfo,
    oneof: 0

  field :custom_audience, 74,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CustomAudienceInfo,
    oneof: 0

  field :combined_audience, 75,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CombinedAudienceInfo,
    oneof: 0
end
