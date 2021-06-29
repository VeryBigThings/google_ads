defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCampaignAudienceViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignAudienceViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CampaignAudienceViewService"

  rpc :GetCampaignAudienceView,
      Google.Ads.Googleads.V8Availabilities.Services.GetCampaignAudienceViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CampaignAudienceView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignAudienceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CampaignAudienceViewService.Service
end
