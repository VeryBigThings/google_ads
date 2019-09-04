defmodule Google.Ads.Googleads.V2.Resources.AdGroupFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: Google.Protobuf.StringValue.t() | nil,
          ad_group: Google.Protobuf.StringValue.t() | nil,
          placeholder_types: [atom | integer],
          matching_function: Google.Ads.Googleads.V2.Common.MatchingFunction.t() | nil,
          status: atom | integer
        }
  defstruct [:resource_name, :feed, :ad_group, :placeholder_types, :matching_function, :status]

  field(:resource_name, 1, type: :string)
  field(:feed, 2, type: Google.Protobuf.StringValue)
  field(:ad_group, 3, type: Google.Protobuf.StringValue)

  field(:placeholder_types, 4,
    repeated: true,
    type: Google.Ads.Googleads.V2.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true
  )

  field(:matching_function, 5, type: Google.Ads.Googleads.V2.Common.MatchingFunction)

  field(:status, 6,
    type: Google.Ads.Googleads.V2.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
  )
end
