defmodule Google.Ads.Googleads.V8.Resources.ExpandedLandingPageView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          expanded_final_url: String.t()
        }

  defstruct [:resource_name, :expanded_final_url]

  field :resource_name, 1, optional: true, type: :string
  field :expanded_final_url, 3, optional: true, type: :string
end
