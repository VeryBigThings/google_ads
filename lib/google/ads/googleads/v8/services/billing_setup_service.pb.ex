defmodule Google.Ads.Googleads.V8.Services.GetBillingSetupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateBillingSetupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operation, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Services.BillingSetupOperation
end

defmodule Google.Ads.Googleads.V8.Services.BillingSetupOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :create, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.BillingSetup, oneof: 0
  field :remove, 1, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateBillingSetupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :result, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateBillingSetupResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateBillingSetupResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.BillingSetupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.BillingSetupService"

  rpc :GetBillingSetup,
      Google.Ads.Googleads.V8.Services.GetBillingSetupRequest,
      Google.Ads.Googleads.V8.Resources.BillingSetup

  rpc :MutateBillingSetup,
      Google.Ads.Googleads.V8.Services.MutateBillingSetupRequest,
      Google.Ads.Googleads.V8.Services.MutateBillingSetupResponse
end

defmodule Google.Ads.Googleads.V8.Services.BillingSetupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.BillingSetupService.Service
end
