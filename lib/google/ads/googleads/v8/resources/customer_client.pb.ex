defmodule Google.Ads.Googleads.V8.Resources.CustomerClient do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          client_customer: Google.Protobuf.StringValue.t() | nil,
          hidden: Google.Protobuf.BoolValue.t() | nil,
          level: Google.Protobuf.Int64Value.t() | nil,
          time_zone: Google.Protobuf.StringValue.t() | nil,
          test_account: Google.Protobuf.BoolValue.t() | nil,
          manager: Google.Protobuf.BoolValue.t() | nil,
          descriptive_name: Google.Protobuf.StringValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          id: Google.Protobuf.Int64Value.t() | nil,
          applied_labels: [String.t()]
        }

  defstruct [
    :resource_name,
    :client_customer,
    :hidden,
    :level,
    :time_zone,
    :test_account,
    :manager,
    :descriptive_name,
    :currency_code,
    :id,
    :applied_labels
  ]

  field :resource_name, 1, type: :string
  field :client_customer, 12, type: Google.Protobuf.StringValue
  field :hidden, 13, type: Google.Protobuf.BoolValue
  field :level, 14, type: Google.Protobuf.Int64Value
  field :time_zone, 15, type: Google.Protobuf.StringValue
  field :test_account, 16, type: Google.Protobuf.BoolValue
  field :manager, 17, type: Google.Protobuf.BoolValue
  field :descriptive_name, 18, type: Google.Protobuf.StringValue
  field :currency_code, 19, type: Google.Protobuf.StringValue
  field :id, 20, type: Google.Protobuf.Int64Value
  field :applied_labels, 21, repeated: true, type: :string
end
