defmodule Google.Ads.Googleads.V4.Services.ListInvoicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :billing_setup, 2, type: :string
  field :issue_year, 3, type: :string

  field :issue_month, 4,
    type: Google.Ads.Googleads.V4.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Services.ListInvoicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :invoices, 1, repeated: true, type: Google.Ads.Googleads.V4.Resources.Invoice
end

defmodule Google.Ads.Googleads.V4.Services.InvoiceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.InvoiceService"

  rpc :ListInvoices,
      Google.Ads.Googleads.V4.Services.ListInvoicesRequest,
      Google.Ads.Googleads.V4.Services.ListInvoicesResponse
end

defmodule Google.Ads.Googleads.V4.Services.InvoiceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.InvoiceService.Service
end
