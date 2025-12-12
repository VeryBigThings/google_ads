defmodule Google.Ads.Googleads.V4.Services.GetChangeStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ChangeStatusService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.ChangeStatusService"

  rpc :GetChangeStatus,
      Google.Ads.Googleads.V4.Services.GetChangeStatusRequest,
      Google.Ads.Googleads.V4.Resources.ChangeStatus
end

defmodule Google.Ads.Googleads.V4.Services.ChangeStatusService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.ChangeStatusService.Service
end
