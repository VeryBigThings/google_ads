defmodule Google.Ads.Googleads.V7.Resources.CustomerFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :feed, 6, type: :string

  field :placeholder_types, 3,
    repeated: true,
    type: Google.Ads.Googleads.V7.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 4, type: Google.Ads.Googleads.V7.Common.MatchingFunction

  field :status, 5,
    type: Google.Ads.Googleads.V7.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
