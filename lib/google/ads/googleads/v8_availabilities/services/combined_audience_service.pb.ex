defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCombinedAudienceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CombinedAudienceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CombinedAudienceService"

  rpc :GetCombinedAudience,
      Google.Ads.Googleads.V8Availabilities.Services.GetCombinedAudienceRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CombinedAudience
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CombinedAudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CombinedAudienceService.Service
end
