defmodule Google.Ads.Googleads.V8.Resources.RemarketingAction do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 5, optional: true, type: :int64
  field :name, 6, optional: true, type: :string
  field :tag_snippets, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.TagSnippet
end
