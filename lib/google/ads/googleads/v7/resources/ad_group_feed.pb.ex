defmodule Google.Ads.Googleads.V7.Resources.AdGroupFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :feed, 7, type: :string
  field :ad_group, 8, type: :string

  field :placeholder_types, 4,
    repeated: true,
    type: Google.Ads.Googleads.V7.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 5, type: Google.Ads.Googleads.V7.Common.MatchingFunction

  field :status, 6,
    type: Google.Ads.Googleads.V7.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
