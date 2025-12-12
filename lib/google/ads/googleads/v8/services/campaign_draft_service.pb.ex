defmodule Google.Ads.Googleads.V8.Services.GetCampaignDraftRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignDraftsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignDraftOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.PromoteCampaignDraftRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :campaign_draft, 1, required: true, type: :string
  field :validate_only, 2, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CampaignDraftOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignDraft,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignDraft,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignDraftsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignDraftResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignDraftResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :campaign_draft, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.CampaignDraft
end

defmodule Google.Ads.Googleads.V8.Services.ListCampaignDraftAsyncErrorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
  field :page_token, 2, optional: true, type: :string
  field :page_size, 3, optional: true, type: :int32
end

defmodule Google.Ads.Googleads.V8.Services.ListCampaignDraftAsyncErrorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CampaignDraftService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignDraftService"

  rpc :GetCampaignDraft,
      Google.Ads.Googleads.V8.Services.GetCampaignDraftRequest,
      Google.Ads.Googleads.V8.Resources.CampaignDraft

  rpc :MutateCampaignDrafts,
      Google.Ads.Googleads.V8.Services.MutateCampaignDraftsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignDraftsResponse

  rpc :PromoteCampaignDraft,
      Google.Ads.Googleads.V8.Services.PromoteCampaignDraftRequest,
      Google.Longrunning.Operation

  rpc :ListCampaignDraftAsyncErrors,
      Google.Ads.Googleads.V8.Services.ListCampaignDraftAsyncErrorsRequest,
      Google.Ads.Googleads.V8.Services.ListCampaignDraftAsyncErrorsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignDraftService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignDraftService.Service
end
