defmodule Google.Ads.Googleads.V8.Resources.CustomerFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: String.t(),
          placeholder_types: [
            [Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType.t()]
          ],
          matching_function: Google.Ads.Googleads.V8.Common.MatchingFunction.t() | nil,
          status: Google.Ads.Googleads.V8.Enums.FeedLinkStatusEnum.FeedLinkStatus.t()
        }
  defstruct [:resource_name, :feed, :placeholder_types, :matching_function, :status]

  field :resource_name, 1, type: :string
  field :feed, 6, type: :string

  field :placeholder_types, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 4, type: Google.Ads.Googleads.V8.Common.MatchingFunction

  field :status, 5,
    type: Google.Ads.Googleads.V8.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
