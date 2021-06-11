defmodule Google.Ads.Googleads.V8.Resources.PaidOrganicSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t()
        }

  defstruct [:resource_name, :search_term]

  field :resource_name, 1, required: true, type: :string
  field :search_term, 3, optional: true, type: :string
end
