defmodule Google.Ads.Googleads.V8.Resources.CustomerLabel do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customer: String.t(),
          label: String.t()
        }

  defstruct [:resource_name, :customer, :label]

  field :resource_name, 1, optional: true, type: :string
  field :customer, 4, optional: true, type: :string
  field :label, 5, optional: true, type: :string
end
