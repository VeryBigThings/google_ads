defmodule Google.Ads.Googleads.V8Availabilities.Services.GetVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.VideoService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.VideoService"

  rpc :GetVideo,
      Google.Ads.Googleads.V8Availabilities.Services.GetVideoRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.Video
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.VideoService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.VideoService.Service
end
