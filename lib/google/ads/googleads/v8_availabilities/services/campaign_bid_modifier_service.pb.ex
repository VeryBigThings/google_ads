defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCampaignBidModifierRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBidModifiersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CampaignBidModifierOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignBidModifierOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignBidModifier, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignBidModifier, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBidModifiersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBidModifierResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBidModifierResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :campaign_bid_modifier, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignBidModifier
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignBidModifierService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CampaignBidModifierService"

  rpc :GetCampaignBidModifier,
      Google.Ads.Googleads.V8Availabilities.Services.GetCampaignBidModifierRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CampaignBidModifier

  rpc :MutateCampaignBidModifiers,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBidModifiersRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBidModifiersResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignBidModifierService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CampaignBidModifierService.Service
end
