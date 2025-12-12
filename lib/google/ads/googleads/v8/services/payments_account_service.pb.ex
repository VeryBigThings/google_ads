defmodule Google.Ads.Googleads.V8.Services.ListPaymentsAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ListPaymentsAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :payments_accounts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.PaymentsAccount
end

defmodule Google.Ads.Googleads.V8.Services.PaymentsAccountService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.PaymentsAccountService"

  rpc :ListPaymentsAccounts,
      Google.Ads.Googleads.V8.Services.ListPaymentsAccountsRequest,
      Google.Ads.Googleads.V8.Services.ListPaymentsAccountsResponse
end

defmodule Google.Ads.Googleads.V8.Services.PaymentsAccountService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.PaymentsAccountService.Service
end
