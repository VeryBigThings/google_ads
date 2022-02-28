defmodule Google.Ads.Googleads.V10.Resources.MobileAppCategoryConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 4, type: :int32, deprecated: false
  field :name, 5, type: :string, deprecated: false
end
