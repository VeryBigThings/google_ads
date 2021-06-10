defmodule Google.Ads.Googleads.V8.Resources.CarrierConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :id, :name, :country_code]

  field :resource_name, 1, type: :string
  field :id, 5, type: Google.Protobuf.Int64Value
  field :name, 6, type: Google.Protobuf.StringValue
  field :country_code, 7, type: Google.Protobuf.StringValue
end
