defmodule Google.Ads.Googleads.V11.Resources.CarrierConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          country_code: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            country_code: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 5, type: :int64, deprecated: false
  field :name, 6, type: :string, deprecated: false
  field :country_code, 7, type: :string, json_name: "countryCode", deprecated: false
end
