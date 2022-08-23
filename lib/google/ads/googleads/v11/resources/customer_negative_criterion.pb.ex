defmodule Google.Ads.Googleads.V11.Resources.CustomerNegativeCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion:
            {:content_label, Google.Ads.Googleads.V11.Common.ContentLabelInfo.t() | nil}
            | {:mobile_application,
               Google.Ads.Googleads.V11.Common.MobileApplicationInfo.t() | nil}
            | {:mobile_app_category,
               Google.Ads.Googleads.V11.Common.MobileAppCategoryInfo.t() | nil}
            | {:placement, Google.Ads.Googleads.V11.Common.PlacementInfo.t() | nil}
            | {:youtube_video, Google.Ads.Googleads.V11.Common.YouTubeVideoInfo.t() | nil}
            | {:youtube_channel, Google.Ads.Googleads.V11.Common.YouTubeChannelInfo.t() | nil},
          resource_name: String.t(),
          id: integer,
          type: Google.Ads.Googleads.V11.Enums.CriterionTypeEnum.CriterionType.t()
        }

  defstruct criterion: nil,
            resource_name: "",
            id: 0,
            type: :UNSPECIFIED

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 10, type: :int64, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V11.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :content_label, 4,
    type: Google.Ads.Googleads.V11.Common.ContentLabelInfo,
    json_name: "contentLabel",
    oneof: 0,
    deprecated: false

  field :mobile_application, 5,
    type: Google.Ads.Googleads.V11.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 6,
    type: Google.Ads.Googleads.V11.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :placement, 7,
    type: Google.Ads.Googleads.V11.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :youtube_video, 8,
    type: Google.Ads.Googleads.V11.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 9,
    type: Google.Ads.Googleads.V11.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false
end
