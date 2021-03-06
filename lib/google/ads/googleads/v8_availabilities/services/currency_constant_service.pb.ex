defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCurrencyConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CurrencyConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CurrencyConstantService"

  rpc :GetCurrencyConstant,
      Google.Ads.Googleads.V8Availabilities.Services.GetCurrencyConstantRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CurrencyConstant
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CurrencyConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CurrencyConstantService.Service
end
