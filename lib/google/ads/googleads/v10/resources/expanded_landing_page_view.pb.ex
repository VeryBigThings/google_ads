defmodule Google.Ads.Googleads.V10.Resources.ExpandedLandingPageView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          expanded_final_url: String.t()
        }

  defstruct resource_name: "",
            expanded_final_url: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :expanded_final_url, 3, type: :string, json_name: "expandedFinalUrl", deprecated: false
end
