defmodule Google.Ads.Googleads.V4.Services.GetCustomerClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.CustomerClientService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.CustomerClientService"

  rpc :GetCustomerClient,
      Google.Ads.Googleads.V4.Services.GetCustomerClientRequest,
      Google.Ads.Googleads.V4.Resources.CustomerClient
end

defmodule Google.Ads.Googleads.V4.Services.CustomerClientService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.CustomerClientService.Service
end
