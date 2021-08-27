defmodule Google.Ads.Googleads.V8.Services.GetAssetFieldTypeViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.AssetFieldTypeViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AssetFieldTypeViewService"

  rpc :GetAssetFieldTypeView,
      Google.Ads.Googleads.V8.Services.GetAssetFieldTypeViewRequest,
      Google.Ads.Googleads.V8.Resources.AssetFieldTypeView
end

defmodule Google.Ads.Googleads.V8.Services.AssetFieldTypeViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AssetFieldTypeViewService.Service
end
