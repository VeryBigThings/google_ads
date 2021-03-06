defmodule Google.Ads.Googleads.V8Availabilities.Resources.ExpandedLandingPageView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          expanded_final_url: String.t()
        }

  defstruct [:resource_name, :expanded_final_url]

  field :resource_name, 1, type: :string
  field :expanded_final_url, 3, type: :string
end
