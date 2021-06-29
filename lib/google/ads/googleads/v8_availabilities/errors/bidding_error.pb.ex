defmodule Google.Ads.Googleads.V8Availabilities.Errors.BiddingErrorEnum.BiddingError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :BIDDING_STRATEGY_TRANSITION_NOT_ALLOWED
          | :CANNOT_ATTACH_BIDDING_STRATEGY_TO_CAMPAIGN
          | :INVALID_ANONYMOUS_BIDDING_STRATEGY_TYPE
          | :INVALID_BIDDING_STRATEGY_TYPE
          | :INVALID_BID
          | :BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE
          | :CONVERSION_TRACKING_NOT_ENABLED
          | :NOT_ENOUGH_CONVERSIONS
          | :CANNOT_CREATE_CAMPAIGN_WITH_BIDDING_STRATEGY
          | :CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_CAMPAIGN_LEVEL_POP_BIDDING_STRATEGY
          | :BIDDING_STRATEGY_NOT_SUPPORTED_WITH_AD_SCHEDULE
          | :PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER
          | :PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA
          | :BIDDING_STRATEGY_NOT_ALLOWED_FOR_SEARCH_ONLY_CAMPAIGNS
          | :BIDDING_STRATEGY_NOT_SUPPORTED_IN_DRAFTS_OR_EXPERIMENTS
          | :BIDDING_STRATEGY_TYPE_DOES_NOT_SUPPORT_PRODUCT_TYPE_ADGROUP_CRITERION
          | :BID_TOO_SMALL
          | :BID_TOO_BIG
          | :BID_TOO_MANY_FRACTIONAL_DIGITS
          | :INVALID_DOMAIN_NAME
          | :NOT_COMPATIBLE_WITH_PAYMENT_MODE
          | :NOT_COMPATIBLE_WITH_BUDGET_TYPE
          | :NOT_COMPATIBLE_WITH_BIDDING_STRATEGY_TYPE
          | :BIDDING_STRATEGY_TYPE_INCOMPATIBLE_WITH_SHARED_BUDGET

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :BIDDING_STRATEGY_TRANSITION_NOT_ALLOWED, 2

  field :CANNOT_ATTACH_BIDDING_STRATEGY_TO_CAMPAIGN, 7

  field :INVALID_ANONYMOUS_BIDDING_STRATEGY_TYPE, 10

  field :INVALID_BIDDING_STRATEGY_TYPE, 14

  field :INVALID_BID, 17

  field :BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE, 18

  field :CONVERSION_TRACKING_NOT_ENABLED, 19

  field :NOT_ENOUGH_CONVERSIONS, 20

  field :CANNOT_CREATE_CAMPAIGN_WITH_BIDDING_STRATEGY, 21

  field :CANNOT_TARGET_CONTENT_NETWORK_ONLY_WITH_CAMPAIGN_LEVEL_POP_BIDDING_STRATEGY, 23

  field :BIDDING_STRATEGY_NOT_SUPPORTED_WITH_AD_SCHEDULE, 24

  field :PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER, 25

  field :PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA, 26

  field :BIDDING_STRATEGY_NOT_ALLOWED_FOR_SEARCH_ONLY_CAMPAIGNS, 27

  field :BIDDING_STRATEGY_NOT_SUPPORTED_IN_DRAFTS_OR_EXPERIMENTS, 28

  field :BIDDING_STRATEGY_TYPE_DOES_NOT_SUPPORT_PRODUCT_TYPE_ADGROUP_CRITERION, 29

  field :BID_TOO_SMALL, 30

  field :BID_TOO_BIG, 31

  field :BID_TOO_MANY_FRACTIONAL_DIGITS, 32

  field :INVALID_DOMAIN_NAME, 33

  field :NOT_COMPATIBLE_WITH_PAYMENT_MODE, 34

  field :NOT_COMPATIBLE_WITH_BUDGET_TYPE, 35

  field :NOT_COMPATIBLE_WITH_BIDDING_STRATEGY_TYPE, 36

  field :BIDDING_STRATEGY_TYPE_INCOMPATIBLE_WITH_SHARED_BUDGET, 37
end

defmodule Google.Ads.Googleads.V8Availabilities.Errors.BiddingErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
