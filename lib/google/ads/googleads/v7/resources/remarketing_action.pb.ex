defmodule Google.Ads.Googleads.V7.Resources.RemarketingAction do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 5, type: :int64
  field :name, 6, type: :string
  field :tag_snippets, 4, repeated: true, type: Google.Ads.Googleads.V7.Common.TagSnippet
end
