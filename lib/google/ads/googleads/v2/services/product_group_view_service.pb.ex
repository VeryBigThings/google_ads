defmodule Google.Ads.Googleads.V2.Services.GetProductGroupViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.ProductGroupViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.ProductGroupViewService"

  rpc(
    :GetProductGroupView,
    Google.Ads.Googleads.V2.Services.GetProductGroupViewRequest,
    Google.Ads.Googleads.V2.Resources.ProductGroupView
  )
end

defmodule Google.Ads.Googleads.V2.Services.ProductGroupViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.ProductGroupViewService.Service
end
