defmodule Google.Ads.Googleads.V8.Services.ListInvoicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :billing_setup, 2, required: true, type: :string
  field :issue_year, 3, required: true, type: :string

  field :issue_month, 4,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.ListInvoicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :invoices, 1, repeated: true, type: Google.Ads.Googleads.V8.Resources.Invoice
end

defmodule Google.Ads.Googleads.V8.Services.InvoiceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.InvoiceService"

  rpc :ListInvoices,
      Google.Ads.Googleads.V8.Services.ListInvoicesRequest,
      Google.Ads.Googleads.V8.Services.ListInvoicesResponse
end

defmodule Google.Ads.Googleads.V8.Services.InvoiceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.InvoiceService.Service
end
