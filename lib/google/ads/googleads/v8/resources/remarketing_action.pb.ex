defmodule Google.Ads.Googleads.V8.Resources.RemarketingAction do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          tag_snippets: [Google.Ads.Googleads.V8.Common.TagSnippet.t()]
        }

  defstruct [:resource_name, :id, :name, :tag_snippets]

  field :resource_name, 1, optional: true, type: :string
  field :id, 5, optional: true, type: :int64
  field :name, 6, optional: true, type: :string
  field :tag_snippets, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.TagSnippet
end
