defmodule Google.Ads.Googleads.V11.Resources.PaidOrganicSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t()
        }

  defstruct resource_name: "",
            search_term: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :search_term, 3, type: :string, json_name: "searchTerm", deprecated: false
end
