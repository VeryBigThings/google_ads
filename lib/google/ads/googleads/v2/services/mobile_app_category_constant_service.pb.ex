defmodule Google.Ads.Googleads.V2.Services.GetMobileAppCategoryConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.MobileAppCategoryConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.MobileAppCategoryConstantService"

  rpc(
    :GetMobileAppCategoryConstant,
    Google.Ads.Googleads.V2.Services.GetMobileAppCategoryConstantRequest,
    Google.Ads.Googleads.V2.Resources.MobileAppCategoryConstant
  )
end

defmodule Google.Ads.Googleads.V2.Services.MobileAppCategoryConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V2.Services.MobileAppCategoryConstantService.Service
end
