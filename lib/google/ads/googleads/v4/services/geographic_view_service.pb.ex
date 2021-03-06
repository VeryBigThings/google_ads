defmodule Google.Ads.Googleads.V4.Services.GetGeographicViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GeographicViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.GeographicViewService"

  rpc :GetGeographicView,
      Google.Ads.Googleads.V4.Services.GetGeographicViewRequest,
      Google.Ads.Googleads.V4.Resources.GeographicView
end

defmodule Google.Ads.Googleads.V4.Services.GeographicViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.GeographicViewService.Service
end
