defmodule Google.Ads.Googleads.V8Availabilities.Services.GetFeedPlaceholderViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedPlaceholderViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.FeedPlaceholderViewService"

  rpc :GetFeedPlaceholderView,
      Google.Ads.Googleads.V8Availabilities.Services.GetFeedPlaceholderViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.FeedPlaceholderView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedPlaceholderViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.FeedPlaceholderViewService.Service
end
