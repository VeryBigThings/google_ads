defmodule Google.Ads.Googleads.V8Availabilities.Services.GetGenderViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GenderViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.GenderViewService"

  rpc :GetGenderView,
      Google.Ads.Googleads.V8Availabilities.Services.GetGenderViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.GenderView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GenderViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.GenderViewService.Service
end
