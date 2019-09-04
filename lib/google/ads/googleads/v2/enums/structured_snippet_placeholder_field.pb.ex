defmodule Google.Ads.Googleads.V2.Enums.StructuredSnippetPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Enums.StructuredSnippetPlaceholderFieldEnum.StructuredSnippetPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:HEADER, 2)
  field(:SNIPPETS, 3)
end
