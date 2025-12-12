defmodule Google.Ads.Googleads.V4.Resources.SharedCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :criterion, 0

  field :resource_name, 1, type: :string
  field :shared_set, 2, type: Google.Protobuf.StringValue
  field :criterion_id, 26, type: Google.Protobuf.Int64Value
  field :type, 4, type: Google.Ads.Googleads.V4.Enums.CriterionTypeEnum.CriterionType, enum: true
  field :keyword, 3, type: Google.Ads.Googleads.V4.Common.KeywordInfo, oneof: 0
  field :youtube_video, 5, type: Google.Ads.Googleads.V4.Common.YouTubeVideoInfo, oneof: 0
  field :youtube_channel, 6, type: Google.Ads.Googleads.V4.Common.YouTubeChannelInfo, oneof: 0
  field :placement, 7, type: Google.Ads.Googleads.V4.Common.PlacementInfo, oneof: 0

  field :mobile_app_category, 8,
    type: Google.Ads.Googleads.V4.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 9,
    type: Google.Ads.Googleads.V4.Common.MobileApplicationInfo,
    oneof: 0
end
