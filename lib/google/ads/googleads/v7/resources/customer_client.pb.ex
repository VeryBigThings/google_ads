defmodule Google.Ads.Googleads.V7.Resources.CustomerClient do
  @moduledoc false
  use Protobuf, syntax: :proto3


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
end
