defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCampaignBudgetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBudgetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CampaignBudgetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignBudgetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignBudget, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignBudget, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBudgetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBudgetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBudgetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :campaign_budget, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignBudget
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignBudgetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CampaignBudgetService"

  rpc :GetCampaignBudget,
      Google.Ads.Googleads.V8Availabilities.Services.GetCampaignBudgetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CampaignBudget

  rpc :MutateCampaignBudgets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBudgetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignBudgetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignBudgetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CampaignBudgetService.Service
end
