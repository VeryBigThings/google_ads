defmodule Google.Ads.Googleads.V8.Resources.Invoice.AccountBudgetSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer: Google.Protobuf.StringValue.t() | nil,
          customer_descriptive_name: Google.Protobuf.StringValue.t() | nil,
          account_budget: Google.Protobuf.StringValue.t() | nil,
          account_budget_name: Google.Protobuf.StringValue.t() | nil,
          purchase_order_number: Google.Protobuf.StringValue.t() | nil,
          subtotal_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          tax_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          total_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          billable_activity_date_range: Google.Ads.Googleads.V8.Common.DateRange.t() | nil
        }

  defstruct [
    :customer,
    :customer_descriptive_name,
    :account_budget,
    :account_budget_name,
    :purchase_order_number,
    :subtotal_amount_micros,
    :tax_amount_micros,
    :total_amount_micros,
    :billable_activity_date_range
  ]

  field :customer, 10, type: Google.Protobuf.StringValue
  field :customer_descriptive_name, 11, type: Google.Protobuf.StringValue
  field :account_budget, 12, type: Google.Protobuf.StringValue
  field :account_budget_name, 13, type: Google.Protobuf.StringValue
  field :purchase_order_number, 14, type: Google.Protobuf.StringValue
  field :subtotal_amount_micros, 15, type: Google.Protobuf.Int64Value
  field :tax_amount_micros, 16, type: Google.Protobuf.Int64Value
  field :total_amount_micros, 17, type: Google.Protobuf.Int64Value
  field :billable_activity_date_range, 9, type: Google.Ads.Googleads.V8.Common.DateRange
end

defmodule Google.Ads.Googleads.V8.Resources.Invoice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V8.Enums.InvoiceTypeEnum.InvoiceType.t(),
          billing_setup: Google.Protobuf.StringValue.t() | nil,
          payments_account_id: Google.Protobuf.StringValue.t() | nil,
          payments_profile_id: Google.Protobuf.StringValue.t() | nil,
          issue_date: Google.Protobuf.StringValue.t() | nil,
          due_date: Google.Protobuf.StringValue.t() | nil,
          service_date_range: Google.Ads.Googleads.V8.Common.DateRange.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          adjustments_subtotal_amount_micros: integer,
          adjustments_tax_amount_micros: integer,
          adjustments_total_amount_micros: integer,
          regulatory_costs_subtotal_amount_micros: integer,
          regulatory_costs_tax_amount_micros: integer,
          regulatory_costs_total_amount_micros: integer,
          subtotal_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          tax_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          total_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          corrected_invoice: Google.Protobuf.StringValue.t() | nil,
          replaced_invoices: [String.t()],
          pdf_url: Google.Protobuf.StringValue.t() | nil,
          account_budget_summaries: [
            Google.Ads.Googleads.V8.Resources.Invoice.AccountBudgetSummary.t()
          ]
        }

  defstruct [
    :resource_name,
    :id,
    :type,
    :billing_setup,
    :payments_account_id,
    :payments_profile_id,
    :issue_date,
    :due_date,
    :service_date_range,
    :currency_code,
    :adjustments_subtotal_amount_micros,
    :adjustments_tax_amount_micros,
    :adjustments_total_amount_micros,
    :regulatory_costs_subtotal_amount_micros,
    :regulatory_costs_tax_amount_micros,
    :regulatory_costs_total_amount_micros,
    :subtotal_amount_micros,
    :tax_amount_micros,
    :total_amount_micros,
    :corrected_invoice,
    :replaced_invoices,
    :pdf_url,
    :account_budget_summaries
  ]

  field :resource_name, 1, type: :string
  field :id, 25, type: Google.Protobuf.StringValue
  field :type, 3, type: Google.Ads.Googleads.V8.Enums.InvoiceTypeEnum.InvoiceType, enum: true
  field :billing_setup, 26, type: Google.Protobuf.StringValue
  field :payments_account_id, 27, type: Google.Protobuf.StringValue
  field :payments_profile_id, 28, type: Google.Protobuf.StringValue
  field :issue_date, 29, type: Google.Protobuf.StringValue
  field :due_date, 30, type: Google.Protobuf.StringValue
  field :service_date_range, 9, type: Google.Ads.Googleads.V8.Common.DateRange
  field :currency_code, 31, type: Google.Protobuf.StringValue
  field :adjustments_subtotal_amount_micros, 19, type: :int64
  field :adjustments_tax_amount_micros, 20, type: :int64
  field :adjustments_total_amount_micros, 21, type: :int64
  field :regulatory_costs_subtotal_amount_micros, 22, type: :int64
  field :regulatory_costs_tax_amount_micros, 23, type: :int64
  field :regulatory_costs_total_amount_micros, 24, type: :int64
  field :subtotal_amount_micros, 33, type: Google.Protobuf.Int64Value
  field :tax_amount_micros, 34, type: Google.Protobuf.Int64Value
  field :total_amount_micros, 35, type: Google.Protobuf.Int64Value
  field :corrected_invoice, 36, type: Google.Protobuf.StringValue
  field :replaced_invoices, 37, repeated: true, type: :string
  field :pdf_url, 38, type: Google.Protobuf.StringValue

  field :account_budget_summaries, 18,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.Invoice.AccountBudgetSummary
end
