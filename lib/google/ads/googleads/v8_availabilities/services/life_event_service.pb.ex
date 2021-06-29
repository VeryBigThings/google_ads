defmodule Google.Ads.Googleads.V8Availabilities.Services.GetLifeEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.LifeEventService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.LifeEventService"

  rpc :GetLifeEvent,
      Google.Ads.Googleads.V8Availabilities.Services.GetLifeEventRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.LifeEvent
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.LifeEventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.LifeEventService.Service
end
