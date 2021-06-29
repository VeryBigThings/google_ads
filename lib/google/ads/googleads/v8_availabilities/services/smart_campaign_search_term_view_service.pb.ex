defmodule Google.Ads.Googleads.V8Availabilities.Services.GetSmartCampaignSearchTermViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.SmartCampaignSearchTermViewService"

  rpc :GetSmartCampaignSearchTermView,
      Google.Ads.Googleads.V8Availabilities.Services.GetSmartCampaignSearchTermViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.SmartCampaignSearchTermView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSearchTermViewService.Service
end
