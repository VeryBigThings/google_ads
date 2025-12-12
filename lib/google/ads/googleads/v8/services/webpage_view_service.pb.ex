defmodule Google.Ads.Googleads.V8.Services.GetWebpageViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.WebpageViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.WebpageViewService"

  rpc :GetWebpageView,
      Google.Ads.Googleads.V8.Services.GetWebpageViewRequest,
      Google.Ads.Googleads.V8.Resources.WebpageView
end

defmodule Google.Ads.Googleads.V8.Services.WebpageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.WebpageViewService.Service
end
