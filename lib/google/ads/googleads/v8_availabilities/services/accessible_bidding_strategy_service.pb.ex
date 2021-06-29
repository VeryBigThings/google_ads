defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAccessibleBiddingStrategyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AccessibleBiddingStrategyService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AccessibleBiddingStrategyService"

  rpc :GetAccessibleBiddingStrategy,
      Google.Ads.Googleads.V8Availabilities.Services.GetAccessibleBiddingStrategyRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AccessibleBiddingStrategy
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AccessibleBiddingStrategyService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8Availabilities.Services.AccessibleBiddingStrategyService.Service
end
