defmodule Google.Ads.Googleads.V2.Services.GetLocationViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.LocationViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.LocationViewService"

  rpc(
    :GetLocationView,
    Google.Ads.Googleads.V2.Services.GetLocationViewRequest,
    Google.Ads.Googleads.V2.Resources.LocationView
  )
end

defmodule Google.Ads.Googleads.V2.Services.LocationViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.LocationViewService.Service
end
