defmodule Google.Ads.Googleads.V8Availabilities.Resources.CampaignCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          campaign: String.t(),
          criterion_id: integer,
          display_name: String.t(),
          bid_modifier: float | :infinity | :negative_infinity | :nan,
          negative: boolean,
          type: Google.Ads.Googleads.V8Availabilities.Enums.CriterionTypeEnum.CriterionType.t(),
          status:
            Google.Ads.Googleads.V8Availabilities.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus.t()
        }

  defstruct [
    :criterion,
    :resource_name,
    :campaign,
    :criterion_id,
    :display_name,
    :bid_modifier,
    :negative,
    :type,
    :status
  ]

  oneof :criterion, 0

  field :resource_name, 1, type: :string
  field :campaign, 37, type: :string
  field :criterion_id, 38, type: :int64
  field :display_name, 43, type: :string
  field :bid_modifier, 39, type: :float
  field :negative, 40, type: :bool
  field :type, 6, type: Google.Ads.Googleads.V8Availabilities.Enums.CriterionTypeEnum.CriterionType, enum: true

  field :status, 35,
    type: Google.Ads.Googleads.V8Availabilities.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus,
    enum: true

  field :keyword, 8, type: Google.Ads.Googleads.V8Availabilities.Common.KeywordInfo, oneof: 0
  field :placement, 9, type: Google.Ads.Googleads.V8Availabilities.Common.PlacementInfo, oneof: 0

  field :mobile_app_category, 10,
    type: Google.Ads.Googleads.V8Availabilities.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 11,
    type: Google.Ads.Googleads.V8Availabilities.Common.MobileApplicationInfo,
    oneof: 0

  field :location, 12, type: Google.Ads.Googleads.V8Availabilities.Common.LocationInfo, oneof: 0
  field :device, 13, type: Google.Ads.Googleads.V8Availabilities.Common.DeviceInfo, oneof: 0
  field :ad_schedule, 15, type: Google.Ads.Googleads.V8Availabilities.Common.AdScheduleInfo, oneof: 0
  field :age_range, 16, type: Google.Ads.Googleads.V8Availabilities.Common.AgeRangeInfo, oneof: 0
  field :gender, 17, type: Google.Ads.Googleads.V8Availabilities.Common.GenderInfo, oneof: 0
  field :income_range, 18, type: Google.Ads.Googleads.V8Availabilities.Common.IncomeRangeInfo, oneof: 0
  field :parental_status, 19, type: Google.Ads.Googleads.V8Availabilities.Common.ParentalStatusInfo, oneof: 0
  field :user_list, 22, type: Google.Ads.Googleads.V8Availabilities.Common.UserListInfo, oneof: 0
  field :youtube_video, 20, type: Google.Ads.Googleads.V8Availabilities.Common.YouTubeVideoInfo, oneof: 0
  field :youtube_channel, 21, type: Google.Ads.Googleads.V8Availabilities.Common.YouTubeChannelInfo, oneof: 0
  field :proximity, 23, type: Google.Ads.Googleads.V8Availabilities.Common.ProximityInfo, oneof: 0
  field :topic, 24, type: Google.Ads.Googleads.V8Availabilities.Common.TopicInfo, oneof: 0
  field :listing_scope, 25, type: Google.Ads.Googleads.V8Availabilities.Common.ListingScopeInfo, oneof: 0
  field :language, 26, type: Google.Ads.Googleads.V8Availabilities.Common.LanguageInfo, oneof: 0
  field :ip_block, 27, type: Google.Ads.Googleads.V8Availabilities.Common.IpBlockInfo, oneof: 0
  field :content_label, 28, type: Google.Ads.Googleads.V8Availabilities.Common.ContentLabelInfo, oneof: 0
  field :carrier, 29, type: Google.Ads.Googleads.V8Availabilities.Common.CarrierInfo, oneof: 0
  field :user_interest, 30, type: Google.Ads.Googleads.V8Availabilities.Common.UserInterestInfo, oneof: 0
  field :webpage, 31, type: Google.Ads.Googleads.V8Availabilities.Common.WebpageInfo, oneof: 0

  field :operating_system_version, 32,
    type: Google.Ads.Googleads.V8Availabilities.Common.OperatingSystemVersionInfo,
    oneof: 0

  field :mobile_device, 33, type: Google.Ads.Googleads.V8Availabilities.Common.MobileDeviceInfo, oneof: 0
  field :location_group, 34, type: Google.Ads.Googleads.V8Availabilities.Common.LocationGroupInfo, oneof: 0
  field :custom_affinity, 36, type: Google.Ads.Googleads.V8Availabilities.Common.CustomAffinityInfo, oneof: 0
  field :custom_audience, 41, type: Google.Ads.Googleads.V8Availabilities.Common.CustomAudienceInfo, oneof: 0

  field :combined_audience, 42,
    type: Google.Ads.Googleads.V8Availabilities.Common.CombinedAudienceInfo,
    oneof: 0

  field :keyword_theme, 45, type: Google.Ads.Googleads.V8Availabilities.Common.KeywordThemeInfo, oneof: 0
end
