defmodule Google.Ads.Googleads.V10.Resources.SharedCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion:
            {:keyword, Google.Ads.Googleads.V10.Common.KeywordInfo.t() | nil}
            | {:youtube_video, Google.Ads.Googleads.V10.Common.YouTubeVideoInfo.t() | nil}
            | {:youtube_channel, Google.Ads.Googleads.V10.Common.YouTubeChannelInfo.t() | nil}
            | {:placement, Google.Ads.Googleads.V10.Common.PlacementInfo.t() | nil}
            | {:mobile_app_category,
               Google.Ads.Googleads.V10.Common.MobileAppCategoryInfo.t() | nil}
            | {:mobile_application,
               Google.Ads.Googleads.V10.Common.MobileApplicationInfo.t() | nil},
          resource_name: String.t(),
          shared_set: String.t(),
          criterion_id: integer,
          type: Google.Ads.Googleads.V10.Enums.CriterionTypeEnum.CriterionType.t()
        }

  defstruct criterion: nil,
            resource_name: "",
            shared_set: "",
            criterion_id: 0,
            type: :UNSPECIFIED

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :shared_set, 10, type: :string, json_name: "sharedSet", deprecated: false
  field :criterion_id, 11, type: :int64, json_name: "criterionId", deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V10.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :keyword, 3,
    type: Google.Ads.Googleads.V10.Common.KeywordInfo,
    oneof: 0,
    deprecated: false

  field :youtube_video, 5,
    type: Google.Ads.Googleads.V10.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 6,
    type: Google.Ads.Googleads.V10.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false

  field :placement, 7,
    type: Google.Ads.Googleads.V10.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 8,
    type: Google.Ads.Googleads.V10.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :mobile_application, 9,
    type: Google.Ads.Googleads.V10.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false
end
