defmodule Google.Ads.Googleads.V4.Resources.PaymentsAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :payments_account_id, 2, type: Google.Protobuf.StringValue
  field :name, 3, type: Google.Protobuf.StringValue
  field :currency_code, 4, type: Google.Protobuf.StringValue
  field :payments_profile_id, 5, type: Google.Protobuf.StringValue
  field :secondary_payments_profile_id, 6, type: Google.Protobuf.StringValue
  field :paying_manager_customer, 7, type: Google.Protobuf.StringValue
end
