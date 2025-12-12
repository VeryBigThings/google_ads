defmodule Google.Ads.Googleads.V4.Services.GetMobileDeviceConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MobileDeviceConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.MobileDeviceConstantService"

  rpc :GetMobileDeviceConstant,
      Google.Ads.Googleads.V4.Services.GetMobileDeviceConstantRequest,
      Google.Ads.Googleads.V4.Resources.MobileDeviceConstant
end

defmodule Google.Ads.Googleads.V4.Services.MobileDeviceConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.MobileDeviceConstantService.Service
end
