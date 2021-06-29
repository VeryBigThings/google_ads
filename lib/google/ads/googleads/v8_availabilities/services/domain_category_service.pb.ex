defmodule Google.Ads.Googleads.V8Availabilities.Services.GetDomainCategoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DomainCategoryService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.DomainCategoryService"

  rpc :GetDomainCategory,
      Google.Ads.Googleads.V8Availabilities.Services.GetDomainCategoryRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.DomainCategory
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.DomainCategoryService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.DomainCategoryService.Service
end
