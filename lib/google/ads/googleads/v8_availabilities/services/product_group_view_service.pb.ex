defmodule Google.Ads.Googleads.V8Availabilities.Services.GetProductGroupViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ProductGroupViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.ProductGroupViewService"

  rpc :GetProductGroupView,
      Google.Ads.Googleads.V8Availabilities.Services.GetProductGroupViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.ProductGroupView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ProductGroupViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.ProductGroupViewService.Service
end
