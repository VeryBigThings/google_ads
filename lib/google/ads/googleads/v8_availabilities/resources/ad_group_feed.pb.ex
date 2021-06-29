defmodule Google.Ads.Googleads.V8Availabilities.Resources.AdGroupFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: String.t(),
          ad_group: String.t(),
          placeholder_types: [
            [Google.Ads.Googleads.V8Availabilities.Enums.PlaceholderTypeEnum.PlaceholderType.t()]
          ],
          matching_function: Google.Ads.Googleads.V8Availabilities.Common.MatchingFunction.t() | nil,
          status: Google.Ads.Googleads.V8Availabilities.Enums.FeedLinkStatusEnum.FeedLinkStatus.t()
        }

  defstruct [:resource_name, :feed, :ad_group, :placeholder_types, :matching_function, :status]

  field :resource_name, 1, type: :string
  field :feed, 7, type: :string
  field :ad_group, 8, type: :string

  field :placeholder_types, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 5, type: Google.Ads.Googleads.V8Availabilities.Common.MatchingFunction

  field :status, 6,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
