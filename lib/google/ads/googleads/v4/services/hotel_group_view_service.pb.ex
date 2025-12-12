defmodule Google.Ads.Googleads.V4.Services.GetHotelGroupViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.HotelGroupViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.HotelGroupViewService"

  rpc :GetHotelGroupView,
      Google.Ads.Googleads.V4.Services.GetHotelGroupViewRequest,
      Google.Ads.Googleads.V4.Resources.HotelGroupView
end

defmodule Google.Ads.Googleads.V4.Services.HotelGroupViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.HotelGroupViewService.Service
end
