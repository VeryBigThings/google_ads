defmodule Google.Ads.Googleads.V2.Services.GetDetailPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.DetailPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.DetailPlacementViewService"

  rpc(
    :GetDetailPlacementView,
    Google.Ads.Googleads.V2.Services.GetDetailPlacementViewRequest,
    Google.Ads.Googleads.V2.Resources.DetailPlacementView
  )
end

defmodule Google.Ads.Googleads.V2.Services.DetailPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.DetailPlacementViewService.Service
end
