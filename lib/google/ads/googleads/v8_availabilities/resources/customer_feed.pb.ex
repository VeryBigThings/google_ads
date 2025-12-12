defmodule Google.Ads.Googleads.V8Availabilities.Resources.CustomerFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :feed, 6, type: :string

  field :placeholder_types, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 4, type: Google.Ads.Googleads.V8Availabilities.Common.MatchingFunction

  field :status, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
