defmodule Google.Ads.Googleads.V8Availabilities.Resources.CarrierConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          country_code: String.t()
        }

  defstruct [:resource_name, :id, :name, :country_code]

  field :resource_name, 1, type: :string
  field :id, 5, type: :int64
  field :name, 6, type: :string
  field :country_code, 7, type: :string
end
