defmodule Google.Ads.Googleads.V8.Resources.PaymentsAccount do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          payments_account_id: String.t(),
          name: String.t(),
          currency_code: String.t(),
          payments_profile_id: String.t(),
          secondary_payments_profile_id: String.t(),
          paying_manager_customer: String.t()
        }

  defstruct [
    :resource_name,
    :payments_account_id,
    :name,
    :currency_code,
    :payments_profile_id,
    :secondary_payments_profile_id,
    :paying_manager_customer
  ]

  field :resource_name, 1, optional: true, type: :string
  field :payments_account_id, 8, optional: true, type: :string
  field :name, 9, optional: true, type: :string
  field :currency_code, 10, optional: true, type: :string
  field :payments_profile_id, 11, optional: true, type: :string
  field :secondary_payments_profile_id, 12, optional: true, type: :string
  field :paying_manager_customer, 13, optional: true, type: :string
end
