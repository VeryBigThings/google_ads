defmodule Google.Ads.Googleads.V8.Services.GetAdGroupAudienceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupAudienceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdGroupAudienceViewService"

  rpc :GetAdGroupAudienceView,
      Google.Ads.Googleads.V8.Services.GetAdGroupAudienceViewRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupAudienceView
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupAudienceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdGroupAudienceViewService.Service
end
