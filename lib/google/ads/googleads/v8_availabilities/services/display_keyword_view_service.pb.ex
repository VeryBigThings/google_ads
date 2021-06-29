defmodule Google.Ads.Googleads.V8Availabilities.Services.GetDisplayKeywordViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DisplayKeywordViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.DisplayKeywordViewService"

  rpc :GetDisplayKeywordView,
      Google.Ads.Googleads.V8Availabilities.Services.GetDisplayKeywordViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.DisplayKeywordView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DisplayKeywordViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.DisplayKeywordViewService.Service
end
