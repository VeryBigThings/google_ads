defmodule Google.Ads.Googleads.V10.Resources.Invoice.AccountBudgetSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer: String.t(),
          customer_descriptive_name: String.t(),
          account_budget: String.t(),
          account_budget_name: String.t(),
          purchase_order_number: String.t(),
          subtotal_amount_micros: integer,
          tax_amount_micros: integer,
          total_amount_micros: integer,
          billable_activity_date_range: Google.Ads.Googleads.V10.Common.DateRange.t() | nil
        }

  defstruct customer: "",
            customer_descriptive_name: "",
            account_budget: "",
            account_budget_name: "",
            purchase_order_number: "",
            subtotal_amount_micros: 0,
            tax_amount_micros: 0,
            total_amount_micros: 0,
            billable_activity_date_range: nil

  field :customer, 10, type: :string, deprecated: false

  field :customer_descriptive_name, 11,
    type: :string,
    json_name: "customerDescriptiveName",
    deprecated: false

  field :account_budget, 12, type: :string, json_name: "accountBudget", deprecated: false
  field :account_budget_name, 13, type: :string, json_name: "accountBudgetName", deprecated: false

  field :purchase_order_number, 14,
    type: :string,
    json_name: "purchaseOrderNumber",
    deprecated: false

  field :subtotal_amount_micros, 15,
    type: :int64,
    json_name: "subtotalAmountMicros",
    deprecated: false

  field :tax_amount_micros, 16, type: :int64, json_name: "taxAmountMicros", deprecated: false
  field :total_amount_micros, 17, type: :int64, json_name: "totalAmountMicros", deprecated: false

  field :billable_activity_date_range, 9,
    type: Google.Ads.Googleads.V10.Common.DateRange,
    json_name: "billableActivityDateRange",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Resources.Invoice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: String.t(),
          type: Google.Ads.Googleads.V10.Enums.InvoiceTypeEnum.InvoiceType.t(),
          billing_setup: String.t(),
          payments_account_id: String.t(),
          payments_profile_id: String.t(),
          issue_date: String.t(),
          due_date: String.t(),
          service_date_range: Google.Ads.Googleads.V10.Common.DateRange.t() | nil,
          currency_code: String.t(),
          adjustments_subtotal_amount_micros: integer,
          adjustments_tax_amount_micros: integer,
          adjustments_total_amount_micros: integer,
          regulatory_costs_subtotal_amount_micros: integer,
          regulatory_costs_tax_amount_micros: integer,
          regulatory_costs_total_amount_micros: integer,
          subtotal_amount_micros: integer,
          tax_amount_micros: integer,
          total_amount_micros: integer,
          corrected_invoice: String.t(),
          replaced_invoices: [String.t()],
          pdf_url: String.t(),
          account_budget_summaries: [
            Google.Ads.Googleads.V10.Resources.Invoice.AccountBudgetSummary.t()
          ]
        }

  defstruct resource_name: "",
            id: "",
            type: :UNSPECIFIED,
            billing_setup: "",
            payments_account_id: "",
            payments_profile_id: "",
            issue_date: "",
            due_date: "",
            service_date_range: nil,
            currency_code: "",
            adjustments_subtotal_amount_micros: 0,
            adjustments_tax_amount_micros: 0,
            adjustments_total_amount_micros: 0,
            regulatory_costs_subtotal_amount_micros: 0,
            regulatory_costs_tax_amount_micros: 0,
            regulatory_costs_total_amount_micros: 0,
            subtotal_amount_micros: 0,
            tax_amount_micros: 0,
            total_amount_micros: 0,
            corrected_invoice: "",
            replaced_invoices: [],
            pdf_url: "",
            account_budget_summaries: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, type: :string, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V10.Enums.InvoiceTypeEnum.InvoiceType,
    enum: true,
    deprecated: false

  field :billing_setup, 26, type: :string, json_name: "billingSetup", deprecated: false
  field :payments_account_id, 27, type: :string, json_name: "paymentsAccountId", deprecated: false
  field :payments_profile_id, 28, type: :string, json_name: "paymentsProfileId", deprecated: false
  field :issue_date, 29, type: :string, json_name: "issueDate", deprecated: false
  field :due_date, 30, type: :string, json_name: "dueDate", deprecated: false

  field :service_date_range, 9,
    type: Google.Ads.Googleads.V10.Common.DateRange,
    json_name: "serviceDateRange",
    deprecated: false

  field :currency_code, 31, type: :string, json_name: "currencyCode", deprecated: false

  field :adjustments_subtotal_amount_micros, 19,
    type: :int64,
    json_name: "adjustmentsSubtotalAmountMicros",
    deprecated: false

  field :adjustments_tax_amount_micros, 20,
    type: :int64,
    json_name: "adjustmentsTaxAmountMicros",
    deprecated: false

  field :adjustments_total_amount_micros, 21,
    type: :int64,
    json_name: "adjustmentsTotalAmountMicros",
    deprecated: false

  field :regulatory_costs_subtotal_amount_micros, 22,
    type: :int64,
    json_name: "regulatoryCostsSubtotalAmountMicros",
    deprecated: false

  field :regulatory_costs_tax_amount_micros, 23,
    type: :int64,
    json_name: "regulatoryCostsTaxAmountMicros",
    deprecated: false

  field :regulatory_costs_total_amount_micros, 24,
    type: :int64,
    json_name: "regulatoryCostsTotalAmountMicros",
    deprecated: false

  field :subtotal_amount_micros, 33,
    type: :int64,
    json_name: "subtotalAmountMicros",
    deprecated: false

  field :tax_amount_micros, 34, type: :int64, json_name: "taxAmountMicros", deprecated: false
  field :total_amount_micros, 35, type: :int64, json_name: "totalAmountMicros", deprecated: false
  field :corrected_invoice, 36, type: :string, json_name: "correctedInvoice", deprecated: false

  field :replaced_invoices, 37,
    repeated: true,
    type: :string,
    json_name: "replacedInvoices",
    deprecated: false

  field :pdf_url, 38, type: :string, json_name: "pdfUrl", deprecated: false

  field :account_budget_summaries, 18,
    repeated: true,
    type: Google.Ads.Googleads.V10.Resources.Invoice.AccountBudgetSummary,
    json_name: "accountBudgetSummaries",
    deprecated: false
end
