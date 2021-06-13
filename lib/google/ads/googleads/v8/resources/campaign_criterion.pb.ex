defmodule Google.Ads.Googleads.V8.Resources.CampaignCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          campaign: String.t(),
          criterion_id: integer,
          display_name: String.t(),
          bid_modifier: float | :infinity | :negative_infinity | :nan,
          negative: boolean,
          type: Google.Ads.Googleads.V8.Enums.CriterionTypeEnum.CriterionType.t(),
          status:
            Google.Ads.Googleads.V8.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus.t()
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
  field :resource_name, 1, optional: true, type: :string
  field :campaign, 37, optional: true, type: :string
  field :criterion_id, 38, optional: true, type: :int64
  field :display_name, 43, optional: true, type: :string
  field :bid_modifier, 39, optional: true, type: :float
  field :negative, 40, optional: true, type: :bool

  field :type, 6,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.CriterionTypeEnum.CriterionType,
    enum: true

  field :status, 35,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus,
    enum: true

  field :keyword, 8, optional: true, type: Google.Ads.Googleads.V8.Common.KeywordInfo, oneof: 0

  field :placement, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PlacementInfo,
    oneof: 0

  field :mobile_app_category, 10,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileApplicationInfo,
    oneof: 0

  field :location, 12, optional: true, type: Google.Ads.Googleads.V8.Common.LocationInfo, oneof: 0
  field :device, 13, optional: true, type: Google.Ads.Googleads.V8.Common.DeviceInfo, oneof: 0

  field :ad_schedule, 15,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AdScheduleInfo,
    oneof: 0

  field :age_range, 16,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.AgeRangeInfo,
    oneof: 0

  field :gender, 17, optional: true, type: Google.Ads.Googleads.V8.Common.GenderInfo, oneof: 0

  field :income_range, 18,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.IncomeRangeInfo,
    oneof: 0

  field :parental_status, 19,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ParentalStatusInfo,
    oneof: 0

  field :user_list, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.UserListInfo,
    oneof: 0

  field :youtube_video, 20,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.YouTubeVideoInfo,
    oneof: 0

  field :youtube_channel, 21,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.YouTubeChannelInfo,
    oneof: 0

  field :proximity, 23,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ProximityInfo,
    oneof: 0

  field :topic, 24, optional: true, type: Google.Ads.Googleads.V8.Common.TopicInfo, oneof: 0

  field :listing_scope, 25,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ListingScopeInfo,
    oneof: 0

  field :language, 26, optional: true, type: Google.Ads.Googleads.V8.Common.LanguageInfo, oneof: 0
  field :ip_block, 27, optional: true, type: Google.Ads.Googleads.V8.Common.IpBlockInfo, oneof: 0

  field :content_label, 28,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ContentLabelInfo,
    oneof: 0

  field :carrier, 29, optional: true, type: Google.Ads.Googleads.V8.Common.CarrierInfo, oneof: 0

  field :user_interest, 30,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.UserInterestInfo,
    oneof: 0

  field :webpage, 31, optional: true, type: Google.Ads.Googleads.V8.Common.WebpageInfo, oneof: 0

  field :operating_system_version, 32,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.OperatingSystemVersionInfo,
    oneof: 0

  field :mobile_device, 33,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileDeviceInfo,
    oneof: 0

  field :location_group, 34,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.LocationGroupInfo,
    oneof: 0

  field :custom_affinity, 36,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CustomAffinityInfo,
    oneof: 0

  field :custom_audience, 41,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CustomAudienceInfo,
    oneof: 0

  field :combined_audience, 42,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.CombinedAudienceInfo,
    oneof: 0

  field :keyword_theme, 45,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.KeywordThemeInfo,
    oneof: 0
end
