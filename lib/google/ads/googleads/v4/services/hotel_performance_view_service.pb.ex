defmodule Google.Ads.Googleads.V4.Services.GetHotelPerformanceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.HotelPerformanceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.HotelPerformanceViewService"

  rpc :GetHotelPerformanceView,
      Google.Ads.Googleads.V4.Services.GetHotelPerformanceViewRequest,
      Google.Ads.Googleads.V4.Resources.HotelPerformanceView
end

defmodule Google.Ads.Googleads.V4.Services.HotelPerformanceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.HotelPerformanceViewService.Service
end
