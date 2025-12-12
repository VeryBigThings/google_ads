defmodule Google.Ads.Googleads.V8.Resources.Invoice.AccountBudgetSummary do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer, 10, optional: true, type: :string
  field :customer_descriptive_name, 11, optional: true, type: :string
  field :account_budget, 12, optional: true, type: :string
  field :account_budget_name, 13, optional: true, type: :string
  field :purchase_order_number, 14, optional: true, type: :string
  field :subtotal_amount_micros, 15, optional: true, type: :int64
  field :tax_amount_micros, 16, optional: true, type: :int64
  field :total_amount_micros, 17, optional: true, type: :int64

  field :billable_activity_date_range, 9,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.DateRange
end

defmodule Google.Ads.Googleads.V8.Resources.Invoice do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 25, optional: true, type: :string

  field :type, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.InvoiceTypeEnum.InvoiceType,
    enum: true

  field :billing_setup, 26, optional: true, type: :string
  field :payments_account_id, 27, optional: true, type: :string
  field :payments_profile_id, 28, optional: true, type: :string
  field :issue_date, 29, optional: true, type: :string
  field :due_date, 30, optional: true, type: :string
  field :service_date_range, 9, optional: true, type: Google.Ads.Googleads.V8.Common.DateRange
  field :currency_code, 31, optional: true, type: :string
  field :adjustments_subtotal_amount_micros, 19, optional: true, type: :int64
  field :adjustments_tax_amount_micros, 20, optional: true, type: :int64
  field :adjustments_total_amount_micros, 21, optional: true, type: :int64
  field :regulatory_costs_subtotal_amount_micros, 22, optional: true, type: :int64
  field :regulatory_costs_tax_amount_micros, 23, optional: true, type: :int64
  field :regulatory_costs_total_amount_micros, 24, optional: true, type: :int64
  field :subtotal_amount_micros, 33, optional: true, type: :int64
  field :tax_amount_micros, 34, optional: true, type: :int64
  field :total_amount_micros, 35, optional: true, type: :int64
  field :corrected_invoice, 36, optional: true, type: :string
  field :replaced_invoices, 37, repeated: true, type: :string
  field :pdf_url, 38, optional: true, type: :string

  field :account_budget_summaries, 18,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.Invoice.AccountBudgetSummary
end
