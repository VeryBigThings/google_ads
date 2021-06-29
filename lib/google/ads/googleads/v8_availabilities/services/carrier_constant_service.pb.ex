defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCarrierConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CarrierConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CarrierConstantService"

  rpc :GetCarrierConstant,
      Google.Ads.Googleads.V8Availabilities.Services.GetCarrierConstantRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CarrierConstant
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CarrierConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CarrierConstantService.Service
end
