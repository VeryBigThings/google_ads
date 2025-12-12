defmodule Google.Ads.Googleads.V8.Resources.FeedPlaceholderView do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :placeholder_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true
end
