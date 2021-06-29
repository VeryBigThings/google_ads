defmodule Google.Ads.Googleads.V8Availabilities.Resources.MobileAppCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t()
        }

  defstruct [:resource_name, :id, :name]

  field :resource_name, 1, type: :string
  field :id, 4, type: :int32
  field :name, 5, type: :string
end
