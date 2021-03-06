defmodule Google.Ads.Googleads.V8Availabilities.Services.GetDynamicSearchAdsSearchTermViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DynamicSearchAdsSearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.DynamicSearchAdsSearchTermViewService"

  rpc :GetDynamicSearchAdsSearchTermView,
      Google.Ads.Googleads.V8Availabilities.Services.GetDynamicSearchAdsSearchTermViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.DynamicSearchAdsSearchTermView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DynamicSearchAdsSearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8Availabilities.Services.DynamicSearchAdsSearchTermViewService.Service
end
