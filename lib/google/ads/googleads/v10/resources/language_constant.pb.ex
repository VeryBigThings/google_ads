defmodule Google.Ads.Googleads.V10.Resources.LanguageConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          code: String.t(),
          name: String.t(),
          targetable: boolean
        }

  defstruct resource_name: "",
            id: 0,
            code: "",
            name: "",
            targetable: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, type: :int64, deprecated: false
  field :code, 7, type: :string, deprecated: false
  field :name, 8, type: :string, deprecated: false
  field :targetable, 9, type: :bool, deprecated: false
end
