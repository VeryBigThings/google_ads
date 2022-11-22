defmodule Google.Ads.Googleads.V11.Resources.CustomerFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: String.t(),
          placeholder_types: [
            Google.Ads.Googleads.V11.Enums.PlaceholderTypeEnum.PlaceholderType.t()
          ],
          matching_function: Google.Ads.Googleads.V11.Common.MatchingFunction.t() | nil,
          status: Google.Ads.Googleads.V11.Enums.FeedLinkStatusEnum.FeedLinkStatus.t()
        }

  defstruct resource_name: "",
            feed: "",
            placeholder_types: [],
            matching_function: nil,
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 6, type: :string, deprecated: false

  field :placeholder_types, 3,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderTypes",
    enum: true

  field :matching_function, 4,
    type: Google.Ads.Googleads.V11.Common.MatchingFunction,
    json_name: "matchingFunction"

  field :status, 5,
    type: Google.Ads.Googleads.V11.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true,
    deprecated: false
end