defmodule Google.Ads.Googleads.V8Availabilities.Services.GetOperatingSystemVersionConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.OperatingSystemVersionConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.OperatingSystemVersionConstantService"

  rpc :GetOperatingSystemVersionConstant,
      Google.Ads.Googleads.V8Availabilities.Services.GetOperatingSystemVersionConstantRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.OperatingSystemVersionConstant
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.OperatingSystemVersionConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8Availabilities.Services.OperatingSystemVersionConstantService.Service
end
