defmodule Google.Ads.Googleads.V2.Resources.CustomerClient do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          client_customer: Google.Protobuf.StringValue.t() | nil,
          hidden: Google.Protobuf.BoolValue.t() | nil,
          level: Google.Protobuf.Int64Value.t() | nil
        }
  defstruct [:resource_name, :client_customer, :hidden, :level]

  field(:resource_name, 1, type: :string)
  field(:client_customer, 3, type: Google.Protobuf.StringValue)
  field(:hidden, 4, type: Google.Protobuf.BoolValue)
  field(:level, 5, type: Google.Protobuf.Int64Value)
end
