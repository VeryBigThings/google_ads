defmodule Google.Ads.Googleads.V10.Resources.AdGroupCriterion.QualityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quality_score: integer,
          creative_quality_score:
            Google.Ads.Googleads.V10.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          post_click_quality_score:
            Google.Ads.Googleads.V10.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          search_predicted_ctr:
            Google.Ads.Googleads.V10.Enums.QualityScoreBucketEnum.QualityScoreBucket.t()
        }

  defstruct quality_score: 0,
            creative_quality_score: :UNSPECIFIED,
            post_click_quality_score: :UNSPECIFIED,
            search_predicted_ctr: :UNSPECIFIED

  field :quality_score, 5, type: :int32, json_name: "qualityScore", deprecated: false

  field :creative_quality_score, 2,
    type: Google.Ads.Googleads.V10.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "creativeQualityScore",
    enum: true,
    deprecated: false

  field :post_click_quality_score, 3,
    type: Google.Ads.Googleads.V10.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "postClickQualityScore",
    enum: true,
    deprecated: false

  field :search_predicted_ctr, 4,
    type: Google.Ads.Googleads.V10.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "searchPredictedCtr",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AdGroupCriterion.PositionEstimates do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          first_page_cpc_micros: integer,
          first_position_cpc_micros: integer,
          top_of_page_cpc_micros: integer,
          estimated_add_clicks_at_first_position_cpc: integer,
          estimated_add_cost_at_first_position_cpc: integer
        }

  defstruct first_page_cpc_micros: 0,
            first_position_cpc_micros: 0,
            top_of_page_cpc_micros: 0,
            estimated_add_clicks_at_first_position_cpc: 0,
            estimated_add_cost_at_first_position_cpc: 0

  field :first_page_cpc_micros, 6,
    type: :int64,
    json_name: "firstPageCpcMicros",
    deprecated: false

  field :first_position_cpc_micros, 7,
    type: :int64,
    json_name: "firstPositionCpcMicros",
    deprecated: false

  field :top_of_page_cpc_micros, 8,
    type: :int64,
    json_name: "topOfPageCpcMicros",
    deprecated: false

  field :estimated_add_clicks_at_first_position_cpc, 9,
    type: :int64,
    json_name: "estimatedAddClicksAtFirstPositionCpc",
    deprecated: false

  field :estimated_add_cost_at_first_position_cpc, 10,
    type: :int64,
    json_name: "estimatedAddCostAtFirstPositionCpc",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.AdGroupCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion:
            {:keyword, Google.Ads.Googleads.V10.Common.KeywordInfo.t() | nil}
            | {:placement, Google.Ads.Googleads.V10.Common.PlacementInfo.t() | nil}
            | {:mobile_app_category,
               Google.Ads.Googleads.V10.Common.MobileAppCategoryInfo.t() | nil}
            | {:mobile_application,
               Google.Ads.Googleads.V10.Common.MobileApplicationInfo.t() | nil}
            | {:listing_group, Google.Ads.Googleads.V10.Common.ListingGroupInfo.t() | nil}
            | {:age_range, Google.Ads.Googleads.V10.Common.AgeRangeInfo.t() | nil}
            | {:gender, Google.Ads.Googleads.V10.Common.GenderInfo.t() | nil}
            | {:income_range, Google.Ads.Googleads.V10.Common.IncomeRangeInfo.t() | nil}
            | {:parental_status, Google.Ads.Googleads.V10.Common.ParentalStatusInfo.t() | nil}
            | {:user_list, Google.Ads.Googleads.V10.Common.UserListInfo.t() | nil}
            | {:youtube_video, Google.Ads.Googleads.V10.Common.YouTubeVideoInfo.t() | nil}
            | {:youtube_channel, Google.Ads.Googleads.V10.Common.YouTubeChannelInfo.t() | nil}
            | {:topic, Google.Ads.Googleads.V10.Common.TopicInfo.t() | nil}
            | {:user_interest, Google.Ads.Googleads.V10.Common.UserInterestInfo.t() | nil}
            | {:webpage, Google.Ads.Googleads.V10.Common.WebpageInfo.t() | nil}
            | {:app_payment_model, Google.Ads.Googleads.V10.Common.AppPaymentModelInfo.t() | nil}
            | {:custom_affinity, Google.Ads.Googleads.V10.Common.CustomAffinityInfo.t() | nil}
            | {:custom_intent, Google.Ads.Googleads.V10.Common.CustomIntentInfo.t() | nil}
            | {:custom_audience, Google.Ads.Googleads.V10.Common.CustomAudienceInfo.t() | nil}
            | {:combined_audience, Google.Ads.Googleads.V10.Common.CombinedAudienceInfo.t() | nil}
            | {:audience, Google.Ads.Googleads.V10.Common.AudienceInfo.t() | nil},
          resource_name: String.t(),
          criterion_id: integer,
          display_name: String.t(),
          status:
            Google.Ads.Googleads.V10.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus.t(),
          quality_info: Google.Ads.Googleads.V10.Resources.AdGroupCriterion.QualityInfo.t() | nil,
          ad_group: String.t(),
          type: Google.Ads.Googleads.V10.Enums.CriterionTypeEnum.CriterionType.t(),
          negative: boolean,
          system_serving_status:
            Google.Ads.Googleads.V10.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus.t(),
          approval_status:
            Google.Ads.Googleads.V10.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus.t(),
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
            Google.Ads.Googleads.V10.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_cpm_bid_source:
            Google.Ads.Googleads.V10.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_cpv_bid_source:
            Google.Ads.Googleads.V10.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_percent_cpc_bid_source:
            Google.Ads.Googleads.V10.Enums.BiddingSourceEnum.BiddingSource.t(),
          position_estimates:
            Google.Ads.Googleads.V10.Resources.AdGroupCriterion.PositionEstimates.t() | nil,
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          final_url_suffix: String.t(),
          tracking_url_template: String.t(),
          url_custom_parameters: [Google.Ads.Googleads.V10.Common.CustomParameter.t()]
        }

  defstruct criterion: nil,
            resource_name: "",
            criterion_id: 0,
            display_name: "",
            status: :UNSPECIFIED,
            quality_info: nil,
            ad_group: "",
            type: :UNSPECIFIED,
            negative: false,
            system_serving_status: :UNSPECIFIED,
            approval_status: :UNSPECIFIED,
            disapproval_reasons: [],
            labels: [],
            bid_modifier: 0.0,
            cpc_bid_micros: 0,
            cpm_bid_micros: 0,
            cpv_bid_micros: 0,
            percent_cpc_bid_micros: 0,
            effective_cpc_bid_micros: 0,
            effective_cpm_bid_micros: 0,
            effective_cpv_bid_micros: 0,
            effective_percent_cpc_bid_micros: 0,
            effective_cpc_bid_source: :UNSPECIFIED,
            effective_cpm_bid_source: :UNSPECIFIED,
            effective_cpv_bid_source: :UNSPECIFIED,
            effective_percent_cpc_bid_source: :UNSPECIFIED,
            position_estimates: nil,
            final_urls: [],
            final_mobile_urls: [],
            final_url_suffix: "",
            tracking_url_template: "",
            url_custom_parameters: []

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :criterion_id, 56, type: :int64, json_name: "criterionId", deprecated: false
  field :display_name, 77, type: :string, json_name: "displayName", deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V10.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus,
    enum: true

  field :quality_info, 4,
    type: Google.Ads.Googleads.V10.Resources.AdGroupCriterion.QualityInfo,
    json_name: "qualityInfo",
    deprecated: false

  field :ad_group, 57, type: :string, json_name: "adGroup", deprecated: false

  field :type, 25,
    type: Google.Ads.Googleads.V10.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :negative, 58, type: :bool, deprecated: false

  field :system_serving_status, 52,
    type:
      Google.Ads.Googleads.V10.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus,
    json_name: "systemServingStatus",
    enum: true,
    deprecated: false

  field :approval_status, 53,
    type:
      Google.Ads.Googleads.V10.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false

  field :disapproval_reasons, 59,
    repeated: true,
    type: :string,
    json_name: "disapprovalReasons",
    deprecated: false

  field :labels, 60, repeated: true, type: :string, deprecated: false
  field :bid_modifier, 61, type: :double, json_name: "bidModifier"
  field :cpc_bid_micros, 62, type: :int64, json_name: "cpcBidMicros"
  field :cpm_bid_micros, 63, type: :int64, json_name: "cpmBidMicros"
  field :cpv_bid_micros, 64, type: :int64, json_name: "cpvBidMicros"
  field :percent_cpc_bid_micros, 65, type: :int64, json_name: "percentCpcBidMicros"

  field :effective_cpc_bid_micros, 66,
    type: :int64,
    json_name: "effectiveCpcBidMicros",
    deprecated: false

  field :effective_cpm_bid_micros, 67,
    type: :int64,
    json_name: "effectiveCpmBidMicros",
    deprecated: false

  field :effective_cpv_bid_micros, 68,
    type: :int64,
    json_name: "effectiveCpvBidMicros",
    deprecated: false

  field :effective_percent_cpc_bid_micros, 69,
    type: :int64,
    json_name: "effectivePercentCpcBidMicros",
    deprecated: false

  field :effective_cpc_bid_source, 21,
    type: Google.Ads.Googleads.V10.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveCpcBidSource",
    enum: true,
    deprecated: false

  field :effective_cpm_bid_source, 22,
    type: Google.Ads.Googleads.V10.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveCpmBidSource",
    enum: true,
    deprecated: false

  field :effective_cpv_bid_source, 23,
    type: Google.Ads.Googleads.V10.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveCpvBidSource",
    enum: true,
    deprecated: false

  field :effective_percent_cpc_bid_source, 35,
    type: Google.Ads.Googleads.V10.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectivePercentCpcBidSource",
    enum: true,
    deprecated: false

  field :position_estimates, 10,
    type: Google.Ads.Googleads.V10.Resources.AdGroupCriterion.PositionEstimates,
    json_name: "positionEstimates",
    deprecated: false

  field :final_urls, 70, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 71, repeated: true, type: :string, json_name: "finalMobileUrls"
  field :final_url_suffix, 72, type: :string, json_name: "finalUrlSuffix"
  field :tracking_url_template, 73, type: :string, json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 14,
    repeated: true,
    type: Google.Ads.Googleads.V10.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :keyword, 27,
    type: Google.Ads.Googleads.V10.Common.KeywordInfo,
    oneof: 0,
    deprecated: false

  field :placement, 28,
    type: Google.Ads.Googleads.V10.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 29,
    type: Google.Ads.Googleads.V10.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :mobile_application, 30,
    type: Google.Ads.Googleads.V10.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false

  field :listing_group, 32,
    type: Google.Ads.Googleads.V10.Common.ListingGroupInfo,
    json_name: "listingGroup",
    oneof: 0,
    deprecated: false

  field :age_range, 36,
    type: Google.Ads.Googleads.V10.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0,
    deprecated: false

  field :gender, 37, type: Google.Ads.Googleads.V10.Common.GenderInfo, oneof: 0, deprecated: false

  field :income_range, 38,
    type: Google.Ads.Googleads.V10.Common.IncomeRangeInfo,
    json_name: "incomeRange",
    oneof: 0,
    deprecated: false

  field :parental_status, 39,
    type: Google.Ads.Googleads.V10.Common.ParentalStatusInfo,
    json_name: "parentalStatus",
    oneof: 0,
    deprecated: false

  field :user_list, 42,
    type: Google.Ads.Googleads.V10.Common.UserListInfo,
    json_name: "userList",
    oneof: 0,
    deprecated: false

  field :youtube_video, 40,
    type: Google.Ads.Googleads.V10.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 41,
    type: Google.Ads.Googleads.V10.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false

  field :topic, 43, type: Google.Ads.Googleads.V10.Common.TopicInfo, oneof: 0, deprecated: false

  field :user_interest, 45,
    type: Google.Ads.Googleads.V10.Common.UserInterestInfo,
    json_name: "userInterest",
    oneof: 0,
    deprecated: false

  field :webpage, 46,
    type: Google.Ads.Googleads.V10.Common.WebpageInfo,
    oneof: 0,
    deprecated: false

  field :app_payment_model, 47,
    type: Google.Ads.Googleads.V10.Common.AppPaymentModelInfo,
    json_name: "appPaymentModel",
    oneof: 0,
    deprecated: false

  field :custom_affinity, 48,
    type: Google.Ads.Googleads.V10.Common.CustomAffinityInfo,
    json_name: "customAffinity",
    oneof: 0,
    deprecated: false

  field :custom_intent, 49,
    type: Google.Ads.Googleads.V10.Common.CustomIntentInfo,
    json_name: "customIntent",
    oneof: 0,
    deprecated: false

  field :custom_audience, 74,
    type: Google.Ads.Googleads.V10.Common.CustomAudienceInfo,
    json_name: "customAudience",
    oneof: 0,
    deprecated: false

  field :combined_audience, 75,
    type: Google.Ads.Googleads.V10.Common.CombinedAudienceInfo,
    json_name: "combinedAudience",
    oneof: 0,
    deprecated: false

  field :audience, 79,
    type: Google.Ads.Googleads.V10.Common.AudienceInfo,
    oneof: 0,
    deprecated: false
end
