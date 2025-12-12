defmodule Google.Ads.Googleads.V8.Services.GetBiddingStrategySimulationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.BiddingStrategySimulationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.BiddingStrategySimulationService"

  rpc :GetBiddingStrategySimulation,
      Google.Ads.Googleads.V8.Services.GetBiddingStrategySimulationRequest,
      Google.Ads.Googleads.V8.Resources.BiddingStrategySimulation
end

defmodule Google.Ads.Googleads.V8.Services.BiddingStrategySimulationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.BiddingStrategySimulationService.Service
end
