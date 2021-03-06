defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAdScheduleViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdScheduleViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AdScheduleViewService"

  rpc :GetAdScheduleView,
      Google.Ads.Googleads.V8Availabilities.Services.GetAdScheduleViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AdScheduleView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdScheduleViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AdScheduleViewService.Service
end
