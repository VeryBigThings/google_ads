defmodule Google.Ads.Googleads.V8.Errors.OfflineUserDataJobErrorEnum.OfflineUserDataJobError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_USER_LIST_ID
          | :INVALID_USER_LIST_TYPE
          | :NOT_ON_ALLOWLIST_FOR_USER_ID
          | :INCOMPATIBLE_UPLOAD_KEY_TYPE
          | :MISSING_USER_IDENTIFIER
          | :INVALID_MOBILE_ID_FORMAT
          | :TOO_MANY_USER_IDENTIFIERS
          | :NOT_ON_ALLOWLIST_FOR_STORE_SALES_DIRECT
          | :NOT_ON_ALLOWLIST_FOR_UNIFIED_STORE_SALES
          | :INVALID_PARTNER_ID
          | :INVALID_ENCODING
          | :INVALID_COUNTRY_CODE
          | :INCOMPATIBLE_USER_IDENTIFIER
          | :FUTURE_TRANSACTION_TIME
          | :INVALID_CONVERSION_ACTION
          | :MOBILE_ID_NOT_SUPPORTED
          | :INVALID_OPERATION_ORDER
          | :CONFLICTING_OPERATION
          | :EXTERNAL_UPDATE_ID_ALREADY_EXISTS
          | :JOB_ALREADY_STARTED
          | :REMOVE_NOT_SUPPORTED
          | :REMOVE_ALL_NOT_SUPPORTED
          | :INVALID_SHA256_FORMAT
          | :CUSTOM_KEY_DISABLED
          | :CUSTOM_KEY_NOT_PREDEFINED
          | :CUSTOM_KEY_NOT_SET
          | :CUSTOMER_NOT_ACCEPTED_CUSTOMER_DATA_TERMS
          | :ATTRIBUTES_NOT_APPLICABLE_FOR_CUSTOMER_MATCH_USER_LIST
          | :LIFETIME_VALUE_BUCKET_NOT_IN_RANGE
          | :INCOMPATIBLE_USER_IDENTIFIER_FOR_ATTRIBUTES
          | :FUTURE_TIME_NOT_ALLOWED
          | :LAST_PURCHASE_TIME_LESS_THAN_ACQUISITION_TIME

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_USER_LIST_ID, 3
  field :INVALID_USER_LIST_TYPE, 4
  field :NOT_ON_ALLOWLIST_FOR_USER_ID, 33
  field :INCOMPATIBLE_UPLOAD_KEY_TYPE, 6
  field :MISSING_USER_IDENTIFIER, 7
  field :INVALID_MOBILE_ID_FORMAT, 8
  field :TOO_MANY_USER_IDENTIFIERS, 9
  field :NOT_ON_ALLOWLIST_FOR_STORE_SALES_DIRECT, 31
  field :NOT_ON_ALLOWLIST_FOR_UNIFIED_STORE_SALES, 32
  field :INVALID_PARTNER_ID, 11
  field :INVALID_ENCODING, 12
  field :INVALID_COUNTRY_CODE, 13
  field :INCOMPATIBLE_USER_IDENTIFIER, 14
  field :FUTURE_TRANSACTION_TIME, 15
  field :INVALID_CONVERSION_ACTION, 16
  field :MOBILE_ID_NOT_SUPPORTED, 17
  field :INVALID_OPERATION_ORDER, 18
  field :CONFLICTING_OPERATION, 19
  field :EXTERNAL_UPDATE_ID_ALREADY_EXISTS, 21
  field :JOB_ALREADY_STARTED, 22
  field :REMOVE_NOT_SUPPORTED, 23
  field :REMOVE_ALL_NOT_SUPPORTED, 24
  field :INVALID_SHA256_FORMAT, 25
  field :CUSTOM_KEY_DISABLED, 26
  field :CUSTOM_KEY_NOT_PREDEFINED, 27
  field :CUSTOM_KEY_NOT_SET, 29
  field :CUSTOMER_NOT_ACCEPTED_CUSTOMER_DATA_TERMS, 30
  field :ATTRIBUTES_NOT_APPLICABLE_FOR_CUSTOMER_MATCH_USER_LIST, 34
  field :LIFETIME_VALUE_BUCKET_NOT_IN_RANGE, 35
  field :INCOMPATIBLE_USER_IDENTIFIER_FOR_ATTRIBUTES, 36
  field :FUTURE_TIME_NOT_ALLOWED, 37
  field :LAST_PURCHASE_TIME_LESS_THAN_ACQUISITION_TIME, 38
end

defmodule Google.Ads.Googleads.V8.Errors.OfflineUserDataJobErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end
