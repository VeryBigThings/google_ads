defmodule Google.Ads.Googleads.V8Availabilities.Services.GetTopicViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.TopicViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.TopicViewService"

  rpc :GetTopicView,
      Google.Ads.Googleads.V8Availabilities.Services.GetTopicViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.TopicView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.TopicViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.TopicViewService.Service
end
