defmodule Google.Ads.Googleads.V8Availabilities.Services.GetLandingPageViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.LandingPageViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.LandingPageViewService"

  rpc :GetLandingPageView,
      Google.Ads.Googleads.V8Availabilities.Services.GetLandingPageViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.LandingPageView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.LandingPageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.LandingPageViewService.Service
end
