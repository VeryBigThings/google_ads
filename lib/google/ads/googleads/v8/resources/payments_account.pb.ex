defmodule Google.Ads.Googleads.V8.Resources.PaymentsAccount do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :payments_account_id, 8, optional: true, type: :string
  field :name, 9, optional: true, type: :string
  field :currency_code, 10, optional: true, type: :string
  field :payments_profile_id, 11, optional: true, type: :string
  field :secondary_payments_profile_id, 12, optional: true, type: :string
  field :paying_manager_customer, 13, optional: true, type: :string
end
