defmodule Google.Ads.Googleads.V8Availabilities.Services.GetBiddingStrategySimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.BiddingStrategySimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.BiddingStrategySimulationService"

  rpc :GetBiddingStrategySimulation,
      Google.Ads.Googleads.V8Availabilities.Services.GetBiddingStrategySimulationRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.BiddingStrategySimulation
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.BiddingStrategySimulationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8Availabilities.Services.BiddingStrategySimulationService.Service
end
