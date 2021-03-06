defmodule Google.Ads.Googleads.V8.Services.GetGroupPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GroupPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.GroupPlacementViewService"

  rpc :GetGroupPlacementView,
      Google.Ads.Googleads.V8.Services.GetGroupPlacementViewRequest,
      Google.Ads.Googleads.V8.Resources.GroupPlacementView
end

defmodule Google.Ads.Googleads.V8.Services.GroupPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.GroupPlacementViewService.Service
end
