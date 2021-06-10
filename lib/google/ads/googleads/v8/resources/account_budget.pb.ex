defmodule Google.Ads.Googleads.V8.Resources.AccountBudget.PendingAccountBudgetProposal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          end_time: {atom, any},
          spending_limit: {atom, any},
          account_budget_proposal: Google.Protobuf.StringValue.t() | nil,
          proposal_type:
            Google.Ads.Googleads.V8.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType.t(),
          name: Google.Protobuf.StringValue.t() | nil,
          start_date_time: Google.Protobuf.StringValue.t() | nil,
          purchase_order_number: Google.Protobuf.StringValue.t() | nil,
          notes: Google.Protobuf.StringValue.t() | nil,
          creation_date_time: Google.Protobuf.StringValue.t() | nil
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
  field :account_budget_proposal, 12, type: Google.Protobuf.StringValue

  field :proposal_type, 2,
    type: Google.Ads.Googleads.V8.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType,
    enum: true

  field :name, 13, type: Google.Protobuf.StringValue
  field :start_date_time, 14, type: Google.Protobuf.StringValue
  field :purchase_order_number, 17, type: Google.Protobuf.StringValue
  field :notes, 18, type: Google.Protobuf.StringValue
  field :creation_date_time, 19, type: Google.Protobuf.StringValue
  field :end_date_time, 15, type: :string, oneof: 0

  field :end_time_type, 6,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :spending_limit_micros, 16, type: :int64, oneof: 1

  field :spending_limit_type, 8,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 1
end

defmodule Google.Ads.Googleads.V8.Resources.AccountBudget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          proposed_end_time: {atom, any},
          approved_end_time: {atom, any},
          proposed_spending_limit: {atom, any},
          approved_spending_limit: {atom, any},
          adjusted_spending_limit: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          billing_setup: Google.Protobuf.StringValue.t() | nil,
          status: Google.Ads.Googleads.V8.Enums.AccountBudgetStatusEnum.AccountBudgetStatus.t(),
          name: Google.Protobuf.StringValue.t() | nil,
          proposed_start_date_time: Google.Protobuf.StringValue.t() | nil,
          approved_start_date_time: Google.Protobuf.StringValue.t() | nil,
          total_adjustments_micros: integer,
          amount_served_micros: integer,
          purchase_order_number: Google.Protobuf.StringValue.t() | nil,
          notes: Google.Protobuf.StringValue.t() | nil,
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
  field :resource_name, 1, type: :string
  field :id, 23, type: Google.Protobuf.Int64Value
  field :billing_setup, 24, type: Google.Protobuf.StringValue

  field :status, 4,
    type: Google.Ads.Googleads.V8.Enums.AccountBudgetStatusEnum.AccountBudgetStatus,
    enum: true

  field :name, 25, type: Google.Protobuf.StringValue
  field :proposed_start_date_time, 26, type: Google.Protobuf.StringValue
  field :approved_start_date_time, 27, type: Google.Protobuf.StringValue
  field :total_adjustments_micros, 33, type: :int64
  field :amount_served_micros, 34, type: :int64
  field :purchase_order_number, 35, type: Google.Protobuf.StringValue
  field :notes, 36, type: Google.Protobuf.StringValue

  field :pending_proposal, 22,
    type: Google.Ads.Googleads.V8.Resources.AccountBudget.PendingAccountBudgetProposal

  field :proposed_end_date_time, 28, type: :string, oneof: 0

  field :proposed_end_time_type, 9,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :approved_end_date_time, 29, type: :string, oneof: 1

  field :approved_end_time_type, 11,
    type: Google.Ads.Googleads.V8.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 1

  field :proposed_spending_limit_micros, 30, type: :int64, oneof: 2

  field :proposed_spending_limit_type, 13,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 2

  field :approved_spending_limit_micros, 31, type: :int64, oneof: 3

  field :approved_spending_limit_type, 15,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 3

  field :adjusted_spending_limit_micros, 32, type: :int64, oneof: 4

  field :adjusted_spending_limit_type, 17,
    type: Google.Ads.Googleads.V8.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 4
end
