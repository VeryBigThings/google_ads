defmodule Google.Ads.Googleads.V13.Resources.PaymentsAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :payments_account_id, 8, type: :string, json_name: "paymentsAccountId", deprecated: false
  field :name, 9, type: :string, deprecated: false
  field :currency_code, 10, type: :string, json_name: "currencyCode", deprecated: false
  field :payments_profile_id, 11, type: :string, json_name: "paymentsProfileId", deprecated: false

  field :secondary_payments_profile_id, 12,
    type: :string,
    json_name: "secondaryPaymentsProfileId",
    deprecated: false

  field :paying_manager_customer, 13,
    type: :string,
    json_name: "payingManagerCustomer",
    deprecated: false
end