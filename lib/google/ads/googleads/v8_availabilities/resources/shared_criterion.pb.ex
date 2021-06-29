defmodule Google.Ads.Googleads.V8Availabilities.Resources.SharedCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          shared_set: String.t(),
          criterion_id: integer,
          type: Google.Ads.Googleads.V8Availabilities.Enums.CriterionTypeEnum.CriterionType.t()
        }

  defstruct [:criterion, :resource_name, :shared_set, :criterion_id, :type]

  oneof :criterion, 0

  field :resource_name, 1, type: :string
  field :shared_set, 10, type: :string
  field :criterion_id, 11, type: :int64
  field :type, 4, type: Google.Ads.Googleads.V8Availabilities.Enums.CriterionTypeEnum.CriterionType, enum: true
  field :keyword, 3, type: Google.Ads.Googleads.V8Availabilities.Common.KeywordInfo, oneof: 0
  field :youtube_video, 5, type: Google.Ads.Googleads.V8Availabilities.Common.YouTubeVideoInfo, oneof: 0
  field :youtube_channel, 6, type: Google.Ads.Googleads.V8Availabilities.Common.YouTubeChannelInfo, oneof: 0
  field :placement, 7, type: Google.Ads.Googleads.V8Availabilities.Common.PlacementInfo, oneof: 0

  field :mobile_app_category, 8,
    type: Google.Ads.Googleads.V8Availabilities.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 9,
    type: Google.Ads.Googleads.V8Availabilities.Common.MobileApplicationInfo,
    oneof: 0
end
