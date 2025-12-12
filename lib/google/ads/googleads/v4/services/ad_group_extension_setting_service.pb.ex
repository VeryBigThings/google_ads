defmodule Google.Ads.Googleads.V4.Services.GetAdGroupExtensionSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupExtensionSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.AdGroupExtensionSettingOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupExtensionSettingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.AdGroupExtensionSetting, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.AdGroupExtensionSetting, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupExtensionSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupExtensionSettingResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupExtensionSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupExtensionSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.AdGroupExtensionSettingService"

  rpc :GetAdGroupExtensionSetting,
      Google.Ads.Googleads.V4.Services.GetAdGroupExtensionSettingRequest,
      Google.Ads.Googleads.V4.Resources.AdGroupExtensionSetting

  rpc :MutateAdGroupExtensionSettings,
      Google.Ads.Googleads.V4.Services.MutateAdGroupExtensionSettingsRequest,
      Google.Ads.Googleads.V4.Services.MutateAdGroupExtensionSettingsResponse
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupExtensionSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.AdGroupExtensionSettingService.Service
end
