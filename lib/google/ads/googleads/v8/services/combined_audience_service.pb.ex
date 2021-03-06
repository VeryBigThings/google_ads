defmodule Google.Ads.Googleads.V8.Services.GetCombinedAudienceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CombinedAudienceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CombinedAudienceService"

  rpc :GetCombinedAudience,
      Google.Ads.Googleads.V8.Services.GetCombinedAudienceRequest,
      Google.Ads.Googleads.V8.Resources.CombinedAudience
end

defmodule Google.Ads.Googleads.V8.Services.CombinedAudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CombinedAudienceService.Service
end
