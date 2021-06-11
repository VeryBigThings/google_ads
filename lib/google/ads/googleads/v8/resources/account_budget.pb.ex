defmodule Google.Ads.Googleads.V8.Resources.AccountBudget.PendingAccountBudgetProposal do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          end_time: {atom, any},
          spending_limit: {atom, any},
          account_budget_proposal: String.t(),
          proposal_type:
            Google.Ads.Googleads.V8.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType.t(),
          name: String.t(),
          start_date_time: String.t(),
          purchase_order_number: String.t(),
          notes: String.t(),
          creation_date_time: String.t()
        }

  defstruct [
    :end_time,
    :spending_limit,
    :account_budget_proposal,
    :proposal_type,
    :name,
    :start_date_time,
    :purchase_order_number,
    :notes,
    :creation_date_time
  ]

  oneof :end_time, 0
  oneof :spending_limit, 1
  field :account_budget_proposal, 12, optional: true, type: :string

  field :proposal_type, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType,
    enum: true

  field :name, 13, optional: true, type: :string
  field :start_date_time, 14, optional: true, type: :string
  field :purchase_order_number, 17, optional: true, type: :string
  field :notes, 18, optional: true, type: :string
  field :creation_date_time, 19, optional: true, type: :string
  field :end_date_time, 15, optional: true, type: :string, oneof: 0

  field :end_time_type, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :spending_limit_micros, 16, optional: true, type: :int64, oneof: 1

  field :spending_limit_type, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 1
end

defmodule Google.Ads.Googleads.V8.Resources.AccountBudget do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          proposed_end_time: {atom, any},
          approved_end_time: {atom, any},
          proposed_spending_limit: {atom, any},
          approved_spending_limit: {atom, any},
          adjusted_spending_limit: {atom, any},
          resource_name: String.t(),
          id: integer,
          billing_setup: String.t(),
          status: Google.Ads.Googleads.V8.Enums.AccountBudgetStatusEnum.AccountBudgetStatus.t(),
          name: String.t(),
          proposed_start_date_time: String.t(),
          approved_start_date_time: String.t(),
          total_adjustments_micros: integer,
          amount_served_micros: integer,
          purchase_order_number: String.t(),
          notes: String.t(),
          pending_proposal:
            Google.Ads.Googleads.V8.Resources.AccountBudget.PendingAccountBudgetProposal.t() | nil
        }

  defstruct [
    :proposed_end_time,
    :approved_end_time,
    :proposed_spending_limit,
    :approved_spending_limit,
    :adjusted_spending_limit,
    :resource_name,
    :id,
    :billing_setup,
    :status,
    :name,
    :proposed_start_date_time,
    :approved_start_date_time,
    :total_adjustments_micros,
    :amount_served_micros,
    :purchase_order_number,
    :notes,
    :pending_proposal
  ]

  oneof :proposed_end_time, 0
  oneof :approved_end_time, 1
  oneof :proposed_spending_limit, 2
  oneof :approved_spending_limit, 3
  oneof :adjusted_spending_limit, 4
  field :resource_name, 1, required: true, type: :string
  field :id, 23, optional: true, type: :int64
  field :billing_setup, 24, optional: true, type: :string

  field :status, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.AccountBudgetStatusEnum.AccountBudgetStatus,
    enum: true

  field :name, 25, optional: true, type: :string
  field :proposed_start_date_time, 26, optional: true, type: :string
  field :approved_start_date_time, 27, optional: true, type: :string
  field :total_adjustments_micros, 33, required: true, type: :int64
  field :amount_served_micros, 34, required: true, type: :int64
  field :purchase_order_number, 35, optional: true, type: :string
  field :notes, 36, optional: true, type: :string

  field :pending_proposal, 22,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.AccountBudget.PendingAccountBudgetProposal

  field :proposed_end_date_time, 28, optional: true, type: :string, oneof: 0

  field :proposed_end_time_type, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :approved_end_date_time, 29, optional: true, type: :string, oneof: 1

  field :approved_end_time_type, 11,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 1

  field :proposed_spending_limit_micros, 30, optional: true, type: :int64, oneof: 2

  field :proposed_spending_limit_type, 13,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 2

  field :approved_spending_limit_micros, 31, optional: true, type: :int64, oneof: 3

  field :approved_spending_limit_type, 15,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 3

  field :adjusted_spending_limit_micros, 32, optional: true, type: :int64, oneof: 4

  field :adjusted_spending_limit_type, 17,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 4
end
