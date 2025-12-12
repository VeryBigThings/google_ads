defmodule Google.Ads.Googleads.V8Availabilities.Resources.PaymentsAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :payments_account_id, 8, type: :string
  field :name, 9, type: :string
  field :currency_code, 10, type: :string
  field :payments_profile_id, 11, type: :string
  field :secondary_payments_profile_id, 12, type: :string
  field :paying_manager_customer, 13, type: :string
end
