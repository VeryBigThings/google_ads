defmodule Google.Ads.Googleads.V4.Resources.RemarketingAction do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :tag_snippets, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.TagSnippet
end
