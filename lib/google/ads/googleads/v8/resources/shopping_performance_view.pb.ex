defmodule Google.Ads.Googleads.V8.Resources.ShoppingPerformanceView do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, optional: true, type: :string
end
