defmodule Google.Ads.Googleads.V8.Resources.CustomerNegativeCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          id: integer,
          type: Google.Ads.Googleads.V8.Enums.CriterionTypeEnum.CriterionType.t()
        }

  defstruct [:criterion, :resource_name, :id, :type]

  oneof :criterion, 0
  field :resource_name, 1, optional: true, type: :string
  field :id, 10, optional: true, type: :int64

  field :type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.CriterionTypeEnum.CriterionType,
    enum: true

  field :content_label, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.ContentLabelInfo,
    oneof: 0

  field :mobile_application, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileApplicationInfo,
    oneof: 0

  field :mobile_app_category, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.MobileAppCategoryInfo,
    oneof: 0

  field :placement, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.PlacementInfo,
    oneof: 0

  field :youtube_video, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.YouTubeVideoInfo,
    oneof: 0

  field :youtube_channel, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.YouTubeChannelInfo,
    oneof: 0
end
