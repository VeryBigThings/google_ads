defmodule Google.Ads.Googleads.V4.Services.GetCampaignExtensionSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignExtensionSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.CampaignExtensionSettingOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.CampaignExtensionSettingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.CampaignExtensionSetting, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.CampaignExtensionSetting, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignExtensionSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignExtensionSettingResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignExtensionSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.CampaignExtensionSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.CampaignExtensionSettingService"

  rpc :GetCampaignExtensionSetting,
      Google.Ads.Googleads.V4.Services.GetCampaignExtensionSettingRequest,
      Google.Ads.Googleads.V4.Resources.CampaignExtensionSetting

  rpc :MutateCampaignExtensionSettings,
      Google.Ads.Googleads.V4.Services.MutateCampaignExtensionSettingsRequest,
      Google.Ads.Googleads.V4.Services.MutateCampaignExtensionSettingsResponse
end

defmodule Google.Ads.Googleads.V4.Services.CampaignExtensionSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.CampaignExtensionSettingService.Service
end
