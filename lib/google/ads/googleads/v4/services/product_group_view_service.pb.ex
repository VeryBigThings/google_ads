defmodule Google.Ads.Googleads.V4.Services.GetProductGroupViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ProductGroupViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.ProductGroupViewService"

  rpc :GetProductGroupView,
      Google.Ads.Googleads.V4.Services.GetProductGroupViewRequest,
      Google.Ads.Googleads.V4.Resources.ProductGroupView
end

defmodule Google.Ads.Googleads.V4.Services.ProductGroupViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.ProductGroupViewService.Service
end
