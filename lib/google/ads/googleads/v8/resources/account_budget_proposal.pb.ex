defmodule Google.Ads.Googleads.V8.Resources.AccountBudgetProposal do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          proposed_start_time: {atom, any},
          proposed_end_time: {atom, any},
          approved_end_time: {atom, any},
          proposed_spending_limit: {atom, any},
          approved_spending_limit: {atom, any},
          resource_name: String.t(),
          id: integer,
          billing_setup: String.t(),
          account_budget: String.t(),
          proposal_type:
            Google.Ads.Googleads.V8.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType.t(),
          status:
            Google.Ads.Googleads.V8.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus.t(),
          proposed_name: String.t(),
          approved_start_date_time: String.t(),
          proposed_purchase_order_number: String.t(),
          proposed_notes: String.t(),
          creation_date_time: String.t(),
          approval_date_time: String.t()
        }

  defstruct [
    :proposed_start_time,
    :proposed_end_time,
    :approved_end_time,
    :proposed_spending_limit,
    :approved_spending_limit,
    :resource_name,
    :id,
    :billing_setup,
    :account_budget,
    :proposal_type,
    :status,
    :proposed_name,
    :approved_start_date_time,
    :proposed_purchase_order_number,
    :proposed_notes,
    :creation_date_time,
    :approval_date_time
  ]

  oneof :proposed_start_time, 0
  oneof :proposed_end_time, 1
  oneof :approved_end_time, 2
  oneof :proposed_spending_limit, 3
  oneof :approved_spending_limit, 4
  field :resource_name, 1, required: true, type: :string
  field :id, 25, optional: true, type: :int64
  field :billing_setup, 26, optional: true, type: :string
  field :account_budget, 27, optional: true, type: :string

  field :proposal_type, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType,
    enum: true

  field :status, 15,
    required: true,
    type:
      Google.Ads.Googleads.V8.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus,
    enum: true

  field :proposed_name, 28, optional: true, type: :string
  field :approved_start_date_time, 30, optional: true, type: :string
  field :proposed_purchase_order_number, 35, optional: true, type: :string
  field :proposed_notes, 36, optional: true, type: :string
  field :creation_date_time, 37, optional: true, type: :string
  field :approval_date_time, 38, optional: true, type: :string
  field :proposed_start_date_time, 29, optional: true, type: :string, oneof: 0

  field :proposed_start_time_type, 7,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :proposed_end_date_time, 31, optional: true, type: :string, oneof: 1

  field :proposed_end_time_type, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 1

  field :approved_end_date_time, 32, optional: true, type: :string, oneof: 2

  field :approved_end_time_type, 22,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 2

  field :proposed_spending_limit_micros, 33, optional: true, type: :int64, oneof: 3

  field :proposed_spending_limit_type, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 3

  field :approved_spending_limit_micros, 34, optional: true, type: :int64, oneof: 4

  field :approved_spending_limit_type, 24,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 4
end
