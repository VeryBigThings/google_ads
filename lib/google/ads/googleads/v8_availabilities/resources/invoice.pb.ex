defmodule Google.Ads.Googleads.V8Availabilities.Resources.Invoice.AccountBudgetSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer, 10, type: :string
  field :customer_descriptive_name, 11, type: :string
  field :account_budget, 12, type: :string
  field :account_budget_name, 13, type: :string
  field :purchase_order_number, 14, type: :string
  field :subtotal_amount_micros, 15, type: :int64
  field :tax_amount_micros, 16, type: :int64
  field :total_amount_micros, 17, type: :int64
  field :billable_activity_date_range, 9, type: Google.Ads.Googleads.V8Availabilities.Common.DateRange
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.Invoice do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :id, 25, type: :string
  field :type, 3, type: Google.Ads.Googleads.V8Availabilities.Enums.InvoiceTypeEnum.InvoiceType, enum: true
  field :billing_setup, 26, type: :string
  field :payments_account_id, 27, type: :string
  field :payments_profile_id, 28, type: :string
  field :issue_date, 29, type: :string
  field :due_date, 30, type: :string
  field :service_date_range, 9, type: Google.Ads.Googleads.V8Availabilities.Common.DateRange
  field :currency_code, 31, type: :string
  field :adjustments_subtotal_amount_micros, 19, type: :int64
  field :adjustments_tax_amount_micros, 20, type: :int64
  field :adjustments_total_amount_micros, 21, type: :int64
  field :regulatory_costs_subtotal_amount_micros, 22, type: :int64
  field :regulatory_costs_tax_amount_micros, 23, type: :int64
  field :regulatory_costs_total_amount_micros, 24, type: :int64
  field :subtotal_amount_micros, 33, type: :int64
  field :tax_amount_micros, 34, type: :int64
  field :total_amount_micros, 35, type: :int64
  field :corrected_invoice, 36, type: :string
  field :replaced_invoices, 37, repeated: true, type: :string
  field :pdf_url, 38, type: :string

  field :account_budget_summaries, 18,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Resources.Invoice.AccountBudgetSummary
end
