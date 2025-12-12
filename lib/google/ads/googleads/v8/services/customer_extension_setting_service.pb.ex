defmodule Google.Ads.Googleads.V8.Services.GetCustomerExtensionSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerExtensionSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CustomerExtensionSettingOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CustomerExtensionSettingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerExtensionSetting,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerExtensionSetting,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerExtensionSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerExtensionSettingResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerExtensionSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :customer_extension_setting, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerExtensionSetting
end

defmodule Google.Ads.Googleads.V8.Services.CustomerExtensionSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerExtensionSettingService"

  rpc :GetCustomerExtensionSetting,
      Google.Ads.Googleads.V8.Services.GetCustomerExtensionSettingRequest,
      Google.Ads.Googleads.V8.Resources.CustomerExtensionSetting

  rpc :MutateCustomerExtensionSettings,
      Google.Ads.Googleads.V8.Services.MutateCustomerExtensionSettingsRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerExtensionSettingsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerExtensionSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomerExtensionSettingService.Service
end
