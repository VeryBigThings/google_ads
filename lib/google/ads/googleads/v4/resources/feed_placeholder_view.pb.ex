defmodule Google.Ads.Googleads.V4.Resources.FeedPlaceholderView do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :placeholder_type, 2,
    type: Google.Ads.Googleads.V4.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true
end
