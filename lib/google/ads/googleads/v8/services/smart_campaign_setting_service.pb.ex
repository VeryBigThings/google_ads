defmodule Google.Ads.Googleads.V8.Services.GetSmartCampaignSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.SmartCampaignSettingOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSettingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :update, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting
  field :update_mask, 2, optional: true, type: Google.Protobuf.FieldMask
end

defmodule Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 1, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :smart_campaign_setting, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.SmartCampaignSetting
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.SmartCampaignSettingService"

  rpc :GetSmartCampaignSetting,
      Google.Ads.Googleads.V8.Services.GetSmartCampaignSettingRequest,
      Google.Ads.Googleads.V8.Resources.SmartCampaignSetting

  rpc :MutateSmartCampaignSettings,
      Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingsRequest,
      Google.Ads.Googleads.V8.Services.MutateSmartCampaignSettingsResponse
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.SmartCampaignSettingService.Service
end
