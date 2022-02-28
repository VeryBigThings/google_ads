defmodule Google.Ads.Googleads.V10.Resources.AccountBudgetProposal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          proposed_start_time:
            {:proposed_start_date_time, String.t()}
            | {:proposed_start_time_type,
               Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType.t()},
          proposed_end_time:
            {:proposed_end_date_time, String.t()}
            | {:proposed_end_time_type, Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType.t()},
          approved_end_time:
            {:approved_end_date_time, String.t()}
            | {:approved_end_time_type, Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType.t()},
          proposed_spending_limit:
            {:proposed_spending_limit_micros, integer}
            | {:proposed_spending_limit_type,
               Google.Ads.Googleads.V10.Enums.SpendingLimitTypeEnum.SpendingLimitType.t()},
          approved_spending_limit:
            {:approved_spending_limit_micros, integer}
            | {:approved_spending_limit_type,
               Google.Ads.Googleads.V10.Enums.SpendingLimitTypeEnum.SpendingLimitType.t()},
          resource_name: String.t(),
          id: integer,
          billing_setup: String.t(),
          account_budget: String.t(),
          proposal_type:
            Google.Ads.Googleads.V10.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType.t(),
          status:
            Google.Ads.Googleads.V10.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus.t(),
          proposed_name: String.t(),
          approved_start_date_time: String.t(),
          proposed_purchase_order_number: String.t(),
          proposed_notes: String.t(),
          creation_date_time: String.t(),
          approval_date_time: String.t()
        }

  defstruct proposed_start_time: nil,
            proposed_end_time: nil,
            approved_end_time: nil,
            proposed_spending_limit: nil,
            approved_spending_limit: nil,
            resource_name: "",
            id: 0,
            billing_setup: "",
            account_budget: "",
            proposal_type: :UNSPECIFIED,
            status: :UNSPECIFIED,
            proposed_name: "",
            approved_start_date_time: "",
            proposed_purchase_order_number: "",
            proposed_notes: "",
            creation_date_time: "",
            approval_date_time: ""

  oneof :proposed_start_time, 0
  oneof :proposed_end_time, 1
  oneof :approved_end_time, 2
  oneof :proposed_spending_limit, 3
  oneof :approved_spending_limit, 4

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, type: :int64, deprecated: false
  field :billing_setup, 26, type: :string, json_name: "billingSetup", deprecated: false
  field :account_budget, 27, type: :string, json_name: "accountBudget", deprecated: false

  field :proposal_type, 4,
    type: Google.Ads.Googleads.V10.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType,
    json_name: "proposalType",
    enum: true,
    deprecated: false

  field :status, 15,
    type:
      Google.Ads.Googleads.V10.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus,
    enum: true,
    deprecated: false

  field :proposed_name, 28, type: :string, json_name: "proposedName", deprecated: false

  field :approved_start_date_time, 30,
    type: :string,
    json_name: "approvedStartDateTime",
    deprecated: false

  field :proposed_purchase_order_number, 35,
    type: :string,
    json_name: "proposedPurchaseOrderNumber",
    deprecated: false

  field :proposed_notes, 36, type: :string, json_name: "proposedNotes", deprecated: false
  field :creation_date_time, 37, type: :string, json_name: "creationDateTime", deprecated: false
  field :approval_date_time, 38, type: :string, json_name: "approvalDateTime", deprecated: false

  field :proposed_start_date_time, 29,
    type: :string,
    json_name: "proposedStartDateTime",
    oneof: 0,
    deprecated: false

  field :proposed_start_time_type, 7,
    type: Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType,
    json_name: "proposedStartTimeType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :proposed_end_date_time, 31,
    type: :string,
    json_name: "proposedEndDateTime",
    oneof: 1,
    deprecated: false

  field :proposed_end_time_type, 9,
    type: Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType,
    json_name: "proposedEndTimeType",
    enum: true,
    oneof: 1,
    deprecated: false

  field :approved_end_date_time, 32,
    type: :string,
    json_name: "approvedEndDateTime",
    oneof: 2,
    deprecated: false

  field :approved_end_time_type, 22,
    type: Google.Ads.Googleads.V10.Enums.TimeTypeEnum.TimeType,
    json_name: "approvedEndTimeType",
    enum: true,
    oneof: 2,
    deprecated: false

  field :proposed_spending_limit_micros, 33,
    type: :int64,
    json_name: "proposedSpendingLimitMicros",
    oneof: 3,
    deprecated: false

  field :proposed_spending_limit_type, 11,
    type: Google.Ads.Googleads.V10.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "proposedSpendingLimitType",
    enum: true,
    oneof: 3,
    deprecated: false

  field :approved_spending_limit_micros, 34,
    type: :int64,
    json_name: "approvedSpendingLimitMicros",
    oneof: 4,
    deprecated: false

  field :approved_spending_limit_type, 24,
    type: Google.Ads.Googleads.V10.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "approvedSpendingLimitType",
    enum: true,
    oneof: 4,
    deprecated: false
end
