defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupAudienceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupAudienceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AdGroupAudienceViewService"

  rpc :GetAdGroupAudienceView,
      Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupAudienceViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AdGroupAudienceView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupAudienceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AdGroupAudienceViewService.Service
end
