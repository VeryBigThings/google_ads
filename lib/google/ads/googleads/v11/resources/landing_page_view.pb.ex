defmodule Google.Ads.Googleads.V11.Resources.LandingPageView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          unexpanded_final_url: String.t()
        }

  defstruct resource_name: "",
            unexpanded_final_url: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :unexpanded_final_url, 3,
    type: :string,
    json_name: "unexpandedFinalUrl",
    deprecated: false
end
