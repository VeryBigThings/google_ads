defmodule Google.Ads.Googleads.V8Availabilities.Resources.RemarketingAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          tag_snippets: [Google.Ads.Googleads.V8Availabilities.Common.TagSnippet.t()]
        }

  defstruct [:resource_name, :id, :name, :tag_snippets]

  field :resource_name, 1, type: :string
  field :id, 5, type: :int64
  field :name, 6, type: :string
  field :tag_snippets, 4, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.TagSnippet
end
