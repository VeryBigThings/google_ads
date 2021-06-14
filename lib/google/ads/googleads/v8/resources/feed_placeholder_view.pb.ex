defmodule Google.Ads.Googleads.V8.Resources.FeedPlaceholderView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          placeholder_type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType.t()
        }

  defstruct [:resource_name, :placeholder_type]

  field :resource_name, 1, optional: true, type: :string

  field :placeholder_type, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true
end
