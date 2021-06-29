defmodule Google.Ads.Googleads.V8Availabilities.Services.GetWebpageViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.WebpageViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.WebpageViewService"

  rpc :GetWebpageView,
      Google.Ads.Googleads.V8Availabilities.Services.GetWebpageViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.WebpageView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.WebpageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.WebpageViewService.Service
end
