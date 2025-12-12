defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignExperimentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CampaignExperimentOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignExperimentOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :update, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignExperiment, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignExperimentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignExperimentResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignExperimentResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :campaign_experiment, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignExperiment
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CreateCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :campaign_experiment, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CampaignExperiment
  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CreateCampaignExperimentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :campaign_experiment, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GraduateCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :campaign_experiment, 1, type: :string
  field :campaign_budget, 2, type: :string
  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GraduateCampaignExperimentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :graduated_campaign, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PromoteCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :campaign_experiment, 1, type: :string
  field :validate_only, 2, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.EndCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :campaign_experiment, 1, type: :string
  field :validate_only, 2, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListCampaignExperimentAsyncErrorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListCampaignExperimentAsyncErrorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignExperimentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CampaignExperimentService"

  rpc :GetCampaignExperiment,
      Google.Ads.Googleads.V8Availabilities.Services.GetCampaignExperimentRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CampaignExperiment

  rpc :CreateCampaignExperiment,
      Google.Ads.Googleads.V8Availabilities.Services.CreateCampaignExperimentRequest,
      Google.Longrunning.Operation

  rpc :MutateCampaignExperiments,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignExperimentsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCampaignExperimentsResponse

  rpc :GraduateCampaignExperiment,
      Google.Ads.Googleads.V8Availabilities.Services.GraduateCampaignExperimentRequest,
      Google.Ads.Googleads.V8Availabilities.Services.GraduateCampaignExperimentResponse

  rpc :PromoteCampaignExperiment,
      Google.Ads.Googleads.V8Availabilities.Services.PromoteCampaignExperimentRequest,
      Google.Longrunning.Operation

  rpc :EndCampaignExperiment,
      Google.Ads.Googleads.V8Availabilities.Services.EndCampaignExperimentRequest,
      Google.Protobuf.Empty

  rpc :ListCampaignExperimentAsyncErrors,
      Google.Ads.Googleads.V8Availabilities.Services.ListCampaignExperimentAsyncErrorsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.ListCampaignExperimentAsyncErrorsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignExperimentService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CampaignExperimentService.Service
end
