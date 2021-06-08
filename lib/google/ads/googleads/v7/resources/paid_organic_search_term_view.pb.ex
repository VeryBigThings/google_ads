defmodule Google.Ads.Googleads.V7.Resources.PaidOrganicSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t()
        }
  defstruct [:resource_name, :search_term]

  field :resource_name, 1, type: :string
  field :search_term, 3, type: :string
end
