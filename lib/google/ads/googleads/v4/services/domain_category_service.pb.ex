defmodule Google.Ads.Googleads.V4.Services.GetDomainCategoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.DomainCategoryService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.DomainCategoryService"

  rpc :GetDomainCategory,
      Google.Ads.Googleads.V4.Services.GetDomainCategoryRequest,
      Google.Ads.Googleads.V4.Resources.DomainCategory
end

defmodule Google.Ads.Googleads.V4.Services.DomainCategoryService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.DomainCategoryService.Service
end
