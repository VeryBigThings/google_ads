defmodule Google.Ads.Googleads.V10.Resources.PaymentsAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          payments_account_id: String.t(),
          name: String.t(),
          currency_code: String.t(),
          payments_profile_id: String.t(),
          secondary_payments_profile_id: String.t(),
          paying_manager_customer: String.t()
        }

  defstruct resource_name: "",
            payments_account_id: "",
            name: "",
            currency_code: "",
            payments_profile_id: "",
            secondary_payments_profile_id: "",
            paying_manager_customer: ""

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
