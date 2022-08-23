defmodule Google.Ads.Googleads.V11.Resources.CampaignCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion:
            {:keyword, Google.Ads.Googleads.V11.Common.KeywordInfo.t() | nil}
            | {:placement, Google.Ads.Googleads.V11.Common.PlacementInfo.t() | nil}
            | {:mobile_app_category,
               Google.Ads.Googleads.V11.Common.MobileAppCategoryInfo.t() | nil}
            | {:mobile_application,
               Google.Ads.Googleads.V11.Common.MobileApplicationInfo.t() | nil}
            | {:location, Google.Ads.Googleads.V11.Common.LocationInfo.t() | nil}
            | {:device, Google.Ads.Googleads.V11.Common.DeviceInfo.t() | nil}
            | {:ad_schedule, Google.Ads.Googleads.V11.Common.AdScheduleInfo.t() | nil}
            | {:age_range, Google.Ads.Googleads.V11.Common.AgeRangeInfo.t() | nil}
            | {:gender, Google.Ads.Googleads.V11.Common.GenderInfo.t() | nil}
            | {:income_range, Google.Ads.Googleads.V11.Common.IncomeRangeInfo.t() | nil}
            | {:parental_status, Google.Ads.Googleads.V11.Common.ParentalStatusInfo.t() | nil}
            | {:user_list, Google.Ads.Googleads.V11.Common.UserListInfo.t() | nil}
            | {:youtube_video, Google.Ads.Googleads.V11.Common.YouTubeVideoInfo.t() | nil}
            | {:youtube_channel, Google.Ads.Googleads.V11.Common.YouTubeChannelInfo.t() | nil}
            | {:proximity, Google.Ads.Googleads.V11.Common.ProximityInfo.t() | nil}
            | {:topic, Google.Ads.Googleads.V11.Common.TopicInfo.t() | nil}
            | {:listing_scope, Google.Ads.Googleads.V11.Common.ListingScopeInfo.t() | nil}
            | {:language, Google.Ads.Googleads.V11.Common.LanguageInfo.t() | nil}
            | {:ip_block, Google.Ads.Googleads.V11.Common.IpBlockInfo.t() | nil}
            | {:content_label, Google.Ads.Googleads.V11.Common.ContentLabelInfo.t() | nil}
            | {:carrier, Google.Ads.Googleads.V11.Common.CarrierInfo.t() | nil}
            | {:user_interest, Google.Ads.Googleads.V11.Common.UserInterestInfo.t() | nil}
            | {:webpage, Google.Ads.Googleads.V11.Common.WebpageInfo.t() | nil}
            | {:operating_system_version,
               Google.Ads.Googleads.V11.Common.OperatingSystemVersionInfo.t() | nil}
            | {:mobile_device, Google.Ads.Googleads.V11.Common.MobileDeviceInfo.t() | nil}
            | {:location_group, Google.Ads.Googleads.V11.Common.LocationGroupInfo.t() | nil}
            | {:custom_affinity, Google.Ads.Googleads.V11.Common.CustomAffinityInfo.t() | nil}
            | {:custom_audience, Google.Ads.Googleads.V11.Common.CustomAudienceInfo.t() | nil}
            | {:combined_audience, Google.Ads.Googleads.V11.Common.CombinedAudienceInfo.t() | nil}
            | {:keyword_theme, Google.Ads.Googleads.V11.Common.KeywordThemeInfo.t() | nil},
          resource_name: String.t(),
          campaign: String.t(),
          criterion_id: integer,
          display_name: String.t(),
          bid_modifier: float | :infinity | :negative_infinity | :nan,
          negative: boolean,
          type: Google.Ads.Googleads.V11.Enums.CriterionTypeEnum.CriterionType.t(),
          status:
            Google.Ads.Googleads.V11.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus.t()
        }

  defstruct criterion: nil,
            resource_name: "",
            campaign: "",
            criterion_id: 0,
            display_name: "",
            bid_modifier: 0.0,
            negative: false,
            type: :UNSPECIFIED,
            status: :UNSPECIFIED

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 37, type: :string, deprecated: false
  field :criterion_id, 38, type: :int64, json_name: "criterionId", deprecated: false
  field :display_name, 43, type: :string, json_name: "displayName", deprecated: false
  field :bid_modifier, 39, type: :float, json_name: "bidModifier"
  field :negative, 40, type: :bool, deprecated: false

  field :type, 6,
    type: Google.Ads.Googleads.V11.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :status, 35,
    type: Google.Ads.Googleads.V11.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus,
    enum: true

  field :keyword, 8,
    type: Google.Ads.Googleads.V11.Common.KeywordInfo,
    oneof: 0,
    deprecated: false

  field :placement, 9,
    type: Google.Ads.Googleads.V11.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 10,
    type: Google.Ads.Googleads.V11.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :mobile_application, 11,
    type: Google.Ads.Googleads.V11.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false

  field :location, 12,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    oneof: 0,
    deprecated: false

  field :device, 13, type: Google.Ads.Googleads.V11.Common.DeviceInfo, oneof: 0, deprecated: false

  field :ad_schedule, 15,
    type: Google.Ads.Googleads.V11.Common.AdScheduleInfo,
    json_name: "adSchedule",
    oneof: 0,
    deprecated: false

  field :age_range, 16,
    type: Google.Ads.Googleads.V11.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0,
    deprecated: false

  field :gender, 17, type: Google.Ads.Googleads.V11.Common.GenderInfo, oneof: 0, deprecated: false

  field :income_range, 18,
    type: Google.Ads.Googleads.V11.Common.IncomeRangeInfo,
    json_name: "incomeRange",
    oneof: 0,
    deprecated: false

  field :parental_status, 19,
    type: Google.Ads.Googleads.V11.Common.ParentalStatusInfo,
    json_name: "parentalStatus",
    oneof: 0,
    deprecated: false

  field :user_list, 22,
    type: Google.Ads.Googleads.V11.Common.UserListInfo,
    json_name: "userList",
    oneof: 0,
    deprecated: false

  field :youtube_video, 20,
    type: Google.Ads.Googleads.V11.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 21,
    type: Google.Ads.Googleads.V11.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false

  field :proximity, 23,
    type: Google.Ads.Googleads.V11.Common.ProximityInfo,
    oneof: 0,
    deprecated: false

  field :topic, 24, type: Google.Ads.Googleads.V11.Common.TopicInfo, oneof: 0, deprecated: false

  field :listing_scope, 25,
    type: Google.Ads.Googleads.V11.Common.ListingScopeInfo,
    json_name: "listingScope",
    oneof: 0,
    deprecated: false

  field :language, 26,
    type: Google.Ads.Googleads.V11.Common.LanguageInfo,
    oneof: 0,
    deprecated: false

  field :ip_block, 27,
    type: Google.Ads.Googleads.V11.Common.IpBlockInfo,
    json_name: "ipBlock",
    oneof: 0,
    deprecated: false

  field :content_label, 28,
    type: Google.Ads.Googleads.V11.Common.ContentLabelInfo,
    json_name: "contentLabel",
    oneof: 0,
    deprecated: false

  field :carrier, 29,
    type: Google.Ads.Googleads.V11.Common.CarrierInfo,
    oneof: 0,
    deprecated: false

  field :user_interest, 30,
    type: Google.Ads.Googleads.V11.Common.UserInterestInfo,
    json_name: "userInterest",
    oneof: 0,
    deprecated: false

  field :webpage, 31,
    type: Google.Ads.Googleads.V11.Common.WebpageInfo,
    oneof: 0,
    deprecated: false

  field :operating_system_version, 32,
    type: Google.Ads.Googleads.V11.Common.OperatingSystemVersionInfo,
    json_name: "operatingSystemVersion",
    oneof: 0,
    deprecated: false

  field :mobile_device, 33,
    type: Google.Ads.Googleads.V11.Common.MobileDeviceInfo,
    json_name: "mobileDevice",
    oneof: 0,
    deprecated: false

  field :location_group, 34,
    type: Google.Ads.Googleads.V11.Common.LocationGroupInfo,
    json_name: "locationGroup",
    oneof: 0,
    deprecated: false

  field :custom_affinity, 36,
    type: Google.Ads.Googleads.V11.Common.CustomAffinityInfo,
    json_name: "customAffinity",
    oneof: 0,
    deprecated: false

  field :custom_audience, 41,
    type: Google.Ads.Googleads.V11.Common.CustomAudienceInfo,
    json_name: "customAudience",
    oneof: 0,
    deprecated: false

  field :combined_audience, 42,
    type: Google.Ads.Googleads.V11.Common.CombinedAudienceInfo,
    json_name: "combinedAudience",
    oneof: 0,
    deprecated: false

  field :keyword_theme, 45,
    type: Google.Ads.Googleads.V11.Common.KeywordThemeInfo,
    json_name: "keywordTheme",
    oneof: 0,
    deprecated: false
end
