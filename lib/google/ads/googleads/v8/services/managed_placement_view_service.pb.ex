defmodule Google.Ads.Googleads.V8.Services.GetManagedPlacementViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ManagedPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ManagedPlacementViewService"

  rpc :GetManagedPlacementView,
      Google.Ads.Googleads.V8.Services.GetManagedPlacementViewRequest,
      Google.Ads.Googleads.V8.Resources.ManagedPlacementView
end

defmodule Google.Ads.Googleads.V8.Services.ManagedPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ManagedPlacementViewService.Service
end
