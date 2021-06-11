defmodule Google.Ads.Googleads.V8.Resources.CarrierConstant do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          country_code: String.t()
        }

  defstruct [:resource_name, :id, :name, :country_code]

  field :resource_name, 1, required: true, type: :string
  field :id, 5, optional: true, type: :int64
  field :name, 6, optional: true, type: :string
  field :country_code, 7, optional: true, type: :string
end
