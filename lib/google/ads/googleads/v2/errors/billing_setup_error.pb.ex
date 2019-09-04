defmodule Google.Ads.Googleads.V2.Errors.BillingSetupErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V2.Errors.BillingSetupErrorEnum.BillingSetupError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field(:UNSPECIFIED, 0)
  field(:UNKNOWN, 1)
  field(:CANNOT_USE_EXISTING_AND_NEW_ACCOUNT, 2)
  field(:CANNOT_REMOVE_STARTED_BILLING_SETUP, 3)
  field(:CANNOT_CHANGE_BILLING_TO_SAME_PAYMENTS_ACCOUNT, 4)
  field(:BILLING_SETUP_NOT_PERMITTED_FOR_CUSTOMER_STATUS, 5)
  field(:INVALID_PAYMENTS_ACCOUNT, 6)
  field(:BILLING_SETUP_NOT_PERMITTED_FOR_CUSTOMER_CATEGORY, 7)
  field(:INVALID_START_TIME_TYPE, 8)
  field(:THIRD_PARTY_ALREADY_HAS_BILLING, 9)
  field(:BILLING_SETUP_IN_PROGRESS, 10)
  field(:NO_SIGNUP_PERMISSION, 11)
  field(:CHANGE_OF_BILL_TO_IN_PROGRESS, 12)
  field(:PAYMENTS_PROFILE_NOT_FOUND, 13)
  field(:PAYMENTS_ACCOUNT_NOT_FOUND, 14)
  field(:PAYMENTS_PROFILE_INELIGIBLE, 15)
  field(:PAYMENTS_ACCOUNT_INELIGIBLE, 16)
end
