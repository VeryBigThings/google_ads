defmodule Google.Ads.Googleads.V7.Services.GetThirdPartyAppAnalyticsLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.RegenerateShareableLinkIdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.RegenerateShareableLinkIdResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}
  defstruct []
end

defmodule Google.Ads.Googleads.V7.Services.ThirdPartyAppAnalyticsLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.ThirdPartyAppAnalyticsLinkService"

  rpc :GetThirdPartyAppAnalyticsLink,
      Google.Ads.Googleads.V7.Services.GetThirdPartyAppAnalyticsLinkRequest,
      Google.Ads.Googleads.V7.Resources.ThirdPartyAppAnalyticsLink

  rpc :RegenerateShareableLinkId,
      Google.Ads.Googleads.V7.Services.RegenerateShareableLinkIdRequest,
      Google.Ads.Googleads.V7.Services.RegenerateShareableLinkIdResponse
end

defmodule Google.Ads.Googleads.V7.Services.ThirdPartyAppAnalyticsLinkService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V7.Services.ThirdPartyAppAnalyticsLinkService.Service
end
