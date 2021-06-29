defmodule Google.Ads.Googleads.V8Availabilities.Services.GetDetailedDemographicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DetailedDemographicService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.DetailedDemographicService"

  rpc :GetDetailedDemographic,
      Google.Ads.Googleads.V8Availabilities.Services.GetDetailedDemographicRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.DetailedDemographic
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DetailedDemographicService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.DetailedDemographicService.Service
end
