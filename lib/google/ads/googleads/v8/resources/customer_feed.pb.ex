defmodule Google.Ads.Googleads.V8.Resources.CustomerFeed do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :feed, 6, optional: true, type: :string

  field :placeholder_types, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Common.MatchingFunction

  field :status, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
