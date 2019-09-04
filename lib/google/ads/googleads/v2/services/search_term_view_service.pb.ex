defmodule Google.Ads.Googleads.V2.Services.GetSearchTermViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.SearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.SearchTermViewService"

  rpc(
    :GetSearchTermView,
    Google.Ads.Googleads.V2.Services.GetSearchTermViewRequest,
    Google.Ads.Googleads.V2.Resources.SearchTermView
  )
end

defmodule Google.Ads.Googleads.V2.Services.SearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.SearchTermViewService.Service
end
