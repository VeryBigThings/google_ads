defmodule Google.Ads.Googleads.V8.Resources.CustomerClient do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          client_customer: String.t(),
          hidden: boolean,
          level: integer,
          time_zone: String.t(),
          test_account: boolean,
          manager: boolean,
          descriptive_name: String.t(),
          currency_code: String.t(),
          id: integer,
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
  field :client_customer, 12, type: :string
  field :hidden, 13, type: :bool
  field :level, 14, type: :int64
  field :time_zone, 15, type: :string
  field :test_account, 16, type: :bool
  field :manager, 17, type: :bool
  field :descriptive_name, 18, type: :string
  field :currency_code, 19, type: :string
  field :id, 20, type: :int64
  field :applied_labels, 21, repeated: true, type: :string
end
