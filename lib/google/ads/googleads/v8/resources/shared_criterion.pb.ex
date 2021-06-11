defmodule Google.Ads.Googleads.V8.Resources.SharedCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          shared_set: String.t(),
          criterion_id: integer,
          type: Google.Ads.Googleads.V8.Enums.CriterionTypeEnum.CriterionType.t()
        }

  defstruct [:criterion, :resource_name, :shared_set, :criterion_id, :type]

  oneof :criterion, 0
  field :resource_name, 1, optional: true, type: :string
  field :shared_set, 10, optional: true, type: :string
  field :criterion_id, 11, optional: true, type: :int64

  field :type, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CriterionTypeEnum.CriterionType,
    enum: true

  field :keyword, 3, optional: true, type: Google.Ads.Googleads.V8.Common.KeywordInfo, oneof: 0

  field :youtube_video, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.YouTubeVideoInfo,
    oneof: 0

  field :youtube_channel, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.YouTubeChannelInfo,
    oneof: 0

  field :placement, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PlacementInfo,
    oneof: 0

  field :mobile_app_category, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileApplicationInfo,
    oneof: 0
end
