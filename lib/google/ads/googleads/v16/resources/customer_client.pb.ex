defmodule Google.Ads.Googleads.V16.Resources.CustomerClient do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :client_customer, 12, type: :string, json_name: "clientCustomer", deprecated: false
  field :hidden, 13, type: :bool, deprecated: false
  field :level, 14, type: :int64, deprecated: false
  field :time_zone, 15, type: :string, json_name: "timeZone", deprecated: false
  field :test_account, 16, type: :bool, json_name: "testAccount", deprecated: false
  field :manager, 17, type: :bool, deprecated: false
  field :descriptive_name, 18, type: :string, json_name: "descriptiveName", deprecated: false
  field :currency_code, 19, type: :string, json_name: "currencyCode", deprecated: false
  field :id, 20, type: :int64, deprecated: false

  field :applied_labels, 21,
    repeated: true,
    type: :string,
    json_name: "appliedLabels",
    deprecated: false

  field :status, 22,
    type: Google.Ads.Googleads.V16.Enums.CustomerStatusEnum.CustomerStatus,
    enum: true,
    deprecated: false
end