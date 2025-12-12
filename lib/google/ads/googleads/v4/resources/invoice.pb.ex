defmodule Google.Ads.Googleads.V4.Resources.Invoice.AccountBudgetSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer, 1, type: Google.Protobuf.StringValue
  field :customer_descriptive_name, 2, type: Google.Protobuf.StringValue
  field :account_budget, 3, type: Google.Protobuf.StringValue
  field :account_budget_name, 4, type: Google.Protobuf.StringValue
  field :purchase_order_number, 5, type: Google.Protobuf.StringValue
  field :subtotal_amount_micros, 6, type: Google.Protobuf.Int64Value
  field :tax_amount_micros, 7, type: Google.Protobuf.Int64Value
  field :total_amount_micros, 8, type: Google.Protobuf.Int64Value
  field :billable_activity_date_range, 9, type: Google.Ads.Googleads.V4.Common.DateRange
end

defmodule Google.Ads.Googleads.V4.Resources.Invoice do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.StringValue
  field :type, 3, type: Google.Ads.Googleads.V4.Enums.InvoiceTypeEnum.InvoiceType, enum: true
  field :billing_setup, 4, type: Google.Protobuf.StringValue
  field :payments_account_id, 5, type: Google.Protobuf.StringValue
  field :payments_profile_id, 6, type: Google.Protobuf.StringValue
  field :issue_date, 7, type: Google.Protobuf.StringValue
  field :due_date, 8, type: Google.Protobuf.StringValue
  field :service_date_range, 9, type: Google.Ads.Googleads.V4.Common.DateRange
  field :currency_code, 10, type: Google.Protobuf.StringValue
  field :invoice_level_adjustments_micros, 11, type: Google.Protobuf.Int64Value
  field :subtotal_amount_micros, 12, type: Google.Protobuf.Int64Value
  field :tax_amount_micros, 13, type: Google.Protobuf.Int64Value
  field :total_amount_micros, 14, type: Google.Protobuf.Int64Value
  field :corrected_invoice, 15, type: Google.Protobuf.StringValue
  field :replaced_invoices, 16, repeated: true, type: Google.Protobuf.StringValue
  field :pdf_url, 17, type: Google.Protobuf.StringValue

  field :account_budget_summaries, 18,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.Invoice.AccountBudgetSummary
end
