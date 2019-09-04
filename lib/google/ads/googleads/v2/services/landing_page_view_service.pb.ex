defmodule Google.Ads.Googleads.V2.Services.GetLandingPageViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.LandingPageViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.LandingPageViewService"

  rpc(
    :GetLandingPageView,
    Google.Ads.Googleads.V2.Services.GetLandingPageViewRequest,
    Google.Ads.Googleads.V2.Resources.LandingPageView
  )
end

defmodule Google.Ads.Googleads.V2.Services.LandingPageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.LandingPageViewService.Service
end
