defmodule Google.Ads.Googleads.V8Availabilities.Services.GetSmartCampaignSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSmartCampaignSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSettingOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSettingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :update, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.SmartCampaignSetting
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSmartCampaignSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateSmartCampaignSettingResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSmartCampaignSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :smart_campaign_setting, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.SmartCampaignSetting
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.SmartCampaignSettingService"

  rpc :GetSmartCampaignSetting,
      Google.Ads.Googleads.V8Availabilities.Services.GetSmartCampaignSettingRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.SmartCampaignSetting

  rpc :MutateSmartCampaignSettings,
      Google.Ads.Googleads.V8Availabilities.Services.MutateSmartCampaignSettingsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateSmartCampaignSettingsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.SmartCampaignSettingService.Service
end
