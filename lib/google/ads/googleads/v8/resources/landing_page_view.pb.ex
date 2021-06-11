defmodule Google.Ads.Googleads.V8.Resources.LandingPageView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          unexpanded_final_url: String.t()
        }

  defstruct [:resource_name, :unexpanded_final_url]

  field :resource_name, 1, required: true, type: :string
  field :unexpanded_final_url, 3, optional: true, type: :string
end
