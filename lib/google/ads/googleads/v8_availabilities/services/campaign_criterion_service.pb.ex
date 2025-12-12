defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCampaignCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CampaignCriterionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignCriterion, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignCriterionResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :campaign_criterion, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignCriterion
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CampaignCriterionService"

  rpc :GetCampaignCriterion,
      Google.Ads.Googleads.V8Availabilities.Services.GetCampaignCriterionRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CampaignCriterion

  rpc :MutateCampaignCriteria,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignCriteriaRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignCriteriaResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CampaignCriterionService.Service
end
