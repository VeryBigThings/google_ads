defmodule Google.Ads.Googleads.V8.Services.GetDomainCategoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.DomainCategoryService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.DomainCategoryService"

  rpc :GetDomainCategory,
      Google.Ads.Googleads.V8.Services.GetDomainCategoryRequest,
      Google.Ads.Googleads.V8.Resources.DomainCategory
end

defmodule Google.Ads.Googleads.V8.Services.DomainCategoryService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.DomainCategoryService.Service
end
