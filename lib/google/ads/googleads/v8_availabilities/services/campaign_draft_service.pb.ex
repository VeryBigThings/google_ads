defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCampaignDraftRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignDraftsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CampaignDraftOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PromoteCampaignDraftRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :campaign_draft, 1, type: :string
  field :validate_only, 2, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignDraftOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignDraft, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignDraft, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignDraftsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignDraftResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignDraftResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :campaign_draft, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignDraft
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListCampaignDraftAsyncErrorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListCampaignDraftAsyncErrorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignDraftService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CampaignDraftService"

  rpc :GetCampaignDraft,
      Google.Ads.Googleads.V8Availabilities.Services.GetCampaignDraftRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CampaignDraft

  rpc :MutateCampaignDrafts,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignDraftsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignDraftsResponse

  rpc :PromoteCampaignDraft,
      Google.Ads.Googleads.V8Availabilities.Services.PromoteCampaignDraftRequest,
      Google.Longrunning.Operation

  rpc :ListCampaignDraftAsyncErrors,
      Google.Ads.Googleads.V8Availabilities.Services.ListCampaignDraftAsyncErrorsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.ListCampaignDraftAsyncErrorsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignDraftService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CampaignDraftService.Service
end
