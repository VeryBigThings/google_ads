defmodule Google.Ads.Googleads.V11.Resources.AccountBudget.PendingAccountBudgetProposal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          end_time:
            {:end_date_time, String.t()}
            | {:end_time_type, Google.Ads.Googleads.V11.Enums.TimeTypeEnum.TimeType.t()},
          spending_limit:
            {:spending_limit_micros, integer}
            | {:spending_limit_type,
               Google.Ads.Googleads.V11.Enums.SpendingLimitTypeEnum.SpendingLimitType.t()},
          account_budget_proposal: String.t(),
          proposal_type:
            Google.Ads.Googleads.V11.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType.t(),
          name: String.t(),
          start_date_time: String.t(),
          purchase_order_number: String.t(),
          notes: String.t(),
          creation_date_time: String.t()
        }

  defstruct end_time: nil,
            spending_limit: nil,
            account_budget_proposal: "",
            proposal_type: :UNSPECIFIED,
            name: "",
            start_date_time: "",
            purchase_order_number: "",
            notes: "",
            creation_date_time: ""

  oneof :end_time, 0
  oneof :spending_limit, 1

  field :account_budget_proposal, 12,
    type: :string,
    json_name: "accountBudgetProposal",
    deprecated: false

  field :proposal_type, 2,
    type: Google.Ads.Googleads.V11.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType,
    json_name: "proposalType",
    enum: true,
    deprecated: false

  field :name, 13, type: :string, deprecated: false
  field :start_date_time, 14, type: :string, json_name: "startDateTime", deprecated: false

  field :purchase_order_number, 17,
    type: :string,
    json_name: "purchaseOrderNumber",
    deprecated: false

  field :notes, 18, type: :string, deprecated: false
  field :creation_date_time, 19, type: :string, json_name: "creationDateTime", deprecated: false
  field :end_date_time, 15, type: :string, json_name: "endDateTime", oneof: 0, deprecated: false

  field :end_time_type, 6,
    type: Google.Ads.Googleads.V11.Enums.TimeTypeEnum.TimeType,
    json_name: "endTimeType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :spending_limit_micros, 16,
    type: :int64,
    json_name: "spendingLimitMicros",
    oneof: 1,
    deprecated: false

  field :spending_limit_type, 8,
    type: Google.Ads.Googleads.V11.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "spendingLimitType",
    enum: true,
    oneof: 1,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Resources.AccountBudget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          proposed_end_time:
            {:proposed_end_date_time, String.t()}
            | {:proposed_end_time_type, Google.Ads.Googleads.V11.Enums.TimeTypeEnum.TimeType.t()},
          approved_end_time:
            {:approved_end_date_time, String.t()}
            | {:approved_end_time_type, Google.Ads.Googleads.V11.Enums.TimeTypeEnum.TimeType.t()},
          proposed_spending_limit:
            {:proposed_spending_limit_micros, integer}
            | {:proposed_spending_limit_type,
               Google.Ads.Googleads.V11.Enums.SpendingLimitTypeEnum.SpendingLimitType.t()},
          approved_spending_limit:
            {:approved_spending_limit_micros, integer}
            | {:approved_spending_limit_type,
               Google.Ads.Googleads.V11.Enums.SpendingLimitTypeEnum.SpendingLimitType.t()},
          adjusted_spending_limit:
            {:adjusted_spending_limit_micros, integer}
            | {:adjusted_spending_limit_type,
               Google.Ads.Googleads.V11.Enums.SpendingLimitTypeEnum.SpendingLimitType.t()},
          resource_name: String.t(),
          id: integer,
          billing_setup: String.t(),
          status: Google.Ads.Googleads.V11.Enums.AccountBudgetStatusEnum.AccountBudgetStatus.t(),
          name: String.t(),
          proposed_start_date_time: String.t(),
          approved_start_date_time: String.t(),
          total_adjustments_micros: integer,
          amount_served_micros: integer,
          purchase_order_number: String.t(),
          notes: String.t(),
          pending_proposal:
            Google.Ads.Googleads.V11.Resources.AccountBudget.PendingAccountBudgetProposal.t()
            | nil
        }

  defstruct proposed_end_time: nil,
            approved_end_time: nil,
            proposed_spending_limit: nil,
            approved_spending_limit: nil,
            adjusted_spending_limit: nil,
            resource_name: "",
            id: 0,
            billing_setup: "",
            status: :UNSPECIFIED,
            name: "",
            proposed_start_date_time: "",
            approved_start_date_time: "",
            total_adjustments_micros: 0,
            amount_served_micros: 0,
            purchase_order_number: "",
            notes: "",
            pending_proposal: nil

  oneof :proposed_end_time, 0
  oneof :approved_end_time, 1
  oneof :proposed_spending_limit, 2
  oneof :approved_spending_limit, 3
  oneof :adjusted_spending_limit, 4

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 23, type: :int64, deprecated: false
  field :billing_setup, 24, type: :string, json_name: "billingSetup", deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V11.Enums.AccountBudgetStatusEnum.AccountBudgetStatus,
    enum: true,
    deprecated: false

  field :name, 25, type: :string, deprecated: false

  field :proposed_start_date_time, 26,
    type: :string,
    json_name: "proposedStartDateTime",
    deprecated: false

  field :approved_start_date_time, 27,
    type: :string,
    json_name: "approvedStartDateTime",
    deprecated: false

  field :total_adjustments_micros, 33,
    type: :int64,
    json_name: "totalAdjustmentsMicros",
    deprecated: false

  field :amount_served_micros, 34,
    type: :int64,
    json_name: "amountServedMicros",
    deprecated: false

  field :purchase_order_number, 35,
    type: :string,
    json_name: "purchaseOrderNumber",
    deprecated: false

  field :notes, 36, type: :string, deprecated: false

  field :pending_proposal, 22,
    type: Google.Ads.Googleads.V11.Resources.AccountBudget.PendingAccountBudgetProposal,
    json_name: "pendingProposal",
    deprecated: false

  field :proposed_end_date_time, 28,
    type: :string,
    json_name: "proposedEndDateTime",
    oneof: 0,
    deprecated: false

  field :proposed_end_time_type, 9,
    type: Google.Ads.Googleads.V11.Enums.TimeTypeEnum.TimeType,
    json_name: "proposedEndTimeType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :approved_end_date_time, 29,
    type: :string,
    json_name: "approvedEndDateTime",
    oneof: 1,
    deprecated: false

  field :approved_end_time_type, 11,
    type: Google.Ads.Googleads.V11.Enums.TimeTypeEnum.TimeType,
    json_name: "approvedEndTimeType",
    enum: true,
    oneof: 1,
    deprecated: false

  field :proposed_spending_limit_micros, 30,
    type: :int64,
    json_name: "proposedSpendingLimitMicros",
    oneof: 2,
    deprecated: false

  field :proposed_spending_limit_type, 13,
    type: Google.Ads.Googleads.V11.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "proposedSpendingLimitType",
    enum: true,
    oneof: 2,
    deprecated: false

  field :approved_spending_limit_micros, 31,
    type: :int64,
    json_name: "approvedSpendingLimitMicros",
    oneof: 3,
    deprecated: false

  field :approved_spending_limit_type, 15,
    type: Google.Ads.Googleads.V11.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "approvedSpendingLimitType",
    enum: true,
    oneof: 3,
    deprecated: false

  field :adjusted_spending_limit_micros, 32,
    type: :int64,
    json_name: "adjustedSpendingLimitMicros",
    oneof: 4,
    deprecated: false

  field :adjusted_spending_limit_type, 17,
    type: Google.Ads.Googleads.V11.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "adjustedSpendingLimitType",
    enum: true,
    oneof: 4,
    deprecated: false
end
