defmodule Google.Ads.Googleads.V4.Resources.AdGroupFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :feed, 2, type: Google.Protobuf.StringValue
  field :ad_group, 3, type: Google.Protobuf.StringValue

  field :placeholder_types, 4,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 5, type: Google.Ads.Googleads.V4.Common.MatchingFunction

  field :status, 6,
    type: Google.Ads.Googleads.V4.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
