defmodule Google.Ads.Googleads.V8Availabilities.Services.ListInvoicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          billing_setup: String.t(),
          issue_year: String.t(),
          issue_month: Google.Ads.Googleads.V8Availabilities.Enums.MonthOfYearEnum.MonthOfYear.t()
        }

  defstruct [:customer_id, :billing_setup, :issue_year, :issue_month]

  field :customer_id, 1, type: :string
  field :billing_setup, 2, type: :string
  field :issue_year, 3, type: :string

  field :issue_month, 4,
    type: Google.Ads.Googleads.V8Availabilities.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListInvoicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invoices: [Google.Ads.Googleads.V8Availabilities.Resources.Invoice.t()]
        }

  defstruct [:invoices]

  field :invoices, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Resources.Invoice
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.InvoiceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.InvoiceService"

  rpc :ListInvoices,
      Google.Ads.Googleads.V8Availabilities.Services.ListInvoicesRequest,
      Google.Ads.Googleads.V8Availabilities.Services.ListInvoicesResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.InvoiceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.InvoiceService.Service
end
