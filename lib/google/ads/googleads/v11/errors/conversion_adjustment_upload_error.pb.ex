defmodule Google.Ads.Googleads.V11.Errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :TOO_RECENT_CONVERSION_ACTION
          | :INVALID_CONVERSION_ACTION
          | :CONVERSION_ALREADY_RETRACTED
          | :CONVERSION_NOT_FOUND
          | :CONVERSION_EXPIRED
          | :ADJUSTMENT_PRECEDES_CONVERSION
          | :MORE_RECENT_RESTATEMENT_FOUND
          | :TOO_RECENT_CONVERSION
          | :CANNOT_RESTATE_CONVERSION_ACTION_THAT_ALWAYS_USES_DEFAULT_CONVERSION_VALUE
          | :TOO_MANY_ADJUSTMENTS_IN_REQUEST
          | :TOO_MANY_ADJUSTMENTS
          | :RESTATEMENT_ALREADY_EXISTS
          | :DUPLICATE_ADJUSTMENT_IN_REQUEST
          | :CUSTOMER_NOT_ACCEPTED_CUSTOMER_DATA_TERMS
          | :CONVERSION_ACTION_NOT_ELIGIBLE_FOR_ENHANCEMENT
          | :INVALID_USER_IDENTIFIER
          | :UNSUPPORTED_USER_IDENTIFIER
          | :GCLID_DATE_TIME_PAIR_AND_ORDER_ID_BOTH_SET
          | :CONVERSION_ALREADY_ENHANCED
          | :DUPLICATE_ENHANCEMENT_IN_REQUEST
          | :CUSTOMER_DATA_POLICY_PROHIBITS_ENHANCEMENT
          | :MISSING_ORDER_ID_FOR_WEBPAGE
          | :ORDER_ID_CONTAINS_PII

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TOO_RECENT_CONVERSION_ACTION, 2
  field :INVALID_CONVERSION_ACTION, 3
  field :CONVERSION_ALREADY_RETRACTED, 4
  field :CONVERSION_NOT_FOUND, 5
  field :CONVERSION_EXPIRED, 6
  field :ADJUSTMENT_PRECEDES_CONVERSION, 7
  field :MORE_RECENT_RESTATEMENT_FOUND, 8
  field :TOO_RECENT_CONVERSION, 9
  field :CANNOT_RESTATE_CONVERSION_ACTION_THAT_ALWAYS_USES_DEFAULT_CONVERSION_VALUE, 10
  field :TOO_MANY_ADJUSTMENTS_IN_REQUEST, 11
  field :TOO_MANY_ADJUSTMENTS, 12
  field :RESTATEMENT_ALREADY_EXISTS, 13
  field :DUPLICATE_ADJUSTMENT_IN_REQUEST, 14
  field :CUSTOMER_NOT_ACCEPTED_CUSTOMER_DATA_TERMS, 15
  field :CONVERSION_ACTION_NOT_ELIGIBLE_FOR_ENHANCEMENT, 16
  field :INVALID_USER_IDENTIFIER, 17
  field :UNSUPPORTED_USER_IDENTIFIER, 18
  field :GCLID_DATE_TIME_PAIR_AND_ORDER_ID_BOTH_SET, 20
  field :CONVERSION_ALREADY_ENHANCED, 21
  field :DUPLICATE_ENHANCEMENT_IN_REQUEST, 22
  field :CUSTOMER_DATA_POLICY_PROHIBITS_ENHANCEMENT, 23
  field :MISSING_ORDER_ID_FOR_WEBPAGE, 24
  field :ORDER_ID_CONTAINS_PII, 25
end
defmodule Google.Ads.Googleads.V11.Errors.ConversionAdjustmentUploadErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end