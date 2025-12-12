defmodule Google.Ads.Googleads.V4.Services.GetKeywordViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.KeywordViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.KeywordViewService"

  rpc :GetKeywordView,
      Google.Ads.Googleads.V4.Services.GetKeywordViewRequest,
      Google.Ads.Googleads.V4.Resources.KeywordView
end

defmodule Google.Ads.Googleads.V4.Services.KeywordViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.KeywordViewService.Service
end
