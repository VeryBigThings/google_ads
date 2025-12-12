defmodule Google.Ads.Googleads.V4.Services.GetBillingSetupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateBillingSetupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V4.Services.BillingSetupOperation
end

defmodule Google.Ads.Googleads.V4.Services.BillingSetupOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 2, type: Google.Ads.Googleads.V4.Resources.BillingSetup, oneof: 0
  field :remove, 1, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateBillingSetupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :result, 1, type: Google.Ads.Googleads.V4.Services.MutateBillingSetupResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateBillingSetupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.BillingSetupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.BillingSetupService"

  rpc :GetBillingSetup,
      Google.Ads.Googleads.V4.Services.GetBillingSetupRequest,
      Google.Ads.Googleads.V4.Resources.BillingSetup

  rpc :MutateBillingSetup,
      Google.Ads.Googleads.V4.Services.MutateBillingSetupRequest,
      Google.Ads.Googleads.V4.Services.MutateBillingSetupResponse
end

defmodule Google.Ads.Googleads.V4.Services.BillingSetupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.BillingSetupService.Service
end
