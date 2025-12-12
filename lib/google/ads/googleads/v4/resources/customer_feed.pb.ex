defmodule Google.Ads.Googleads.V4.Resources.CustomerFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :feed, 2, type: Google.Protobuf.StringValue

  field :placeholder_types, 3,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 4, type: Google.Ads.Googleads.V4.Common.MatchingFunction

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
