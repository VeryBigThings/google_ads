defmodule Google.Ads.Googleads.V8Availabilities.Services.GetDetailPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DetailPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.DetailPlacementViewService"

  rpc :GetDetailPlacementView,
      Google.Ads.Googleads.V8Availabilities.Services.GetDetailPlacementViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.DetailPlacementView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DetailPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.DetailPlacementViewService.Service
end
