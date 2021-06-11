defmodule Google.Ads.Googleads.V8.Resources.MobileAppCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t()
        }

  defstruct [:resource_name, :id, :name]

  field :resource_name, 1, required: true, type: :string
  field :id, 4, optional: true, type: :int32
  field :name, 5, optional: true, type: :string
end
