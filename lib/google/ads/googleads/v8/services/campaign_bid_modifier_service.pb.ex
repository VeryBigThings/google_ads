defmodule Google.Ads.Googleads.V8.Services.GetCampaignBidModifierRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignBidModifiersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignBidModifierOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CampaignBidModifierOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBidModifier,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBidModifier,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignBidModifiersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignBidModifierResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignBidModifierResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :campaign_bid_modifier, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBidModifier
end

defmodule Google.Ads.Googleads.V8.Services.CampaignBidModifierService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignBidModifierService"

  rpc :GetCampaignBidModifier,
      Google.Ads.Googleads.V8.Services.GetCampaignBidModifierRequest,
      Google.Ads.Googleads.V8.Resources.CampaignBidModifier

  rpc :MutateCampaignBidModifiers,
      Google.Ads.Googleads.V8.Services.MutateCampaignBidModifiersRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignBidModifiersResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignBidModifierService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignBidModifierService.Service
end
