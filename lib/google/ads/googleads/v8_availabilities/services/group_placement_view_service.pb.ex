defmodule Google.Ads.Googleads.V8Availabilities.Services.GetGroupPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GroupPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.GroupPlacementViewService"

  rpc :GetGroupPlacementView,
      Google.Ads.Googleads.V8Availabilities.Services.GetGroupPlacementViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.GroupPlacementView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GroupPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.GroupPlacementViewService.Service
end
