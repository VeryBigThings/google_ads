defmodule Google.Ads.Googleads.V8.Services.GetCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignExperimentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignExperimentOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CampaignExperimentOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 3, optional: true, type: Google.Protobuf.FieldMask

  field :update, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignExperiment,
    oneof: 0

  field :remove, 2, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignExperimentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignExperimentResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignExperimentResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :campaign_experiment, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignExperiment
end

defmodule Google.Ads.Googleads.V8.Services.CreateCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :campaign_experiment, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignExperiment

  field :validate_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CreateCampaignExperimentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :campaign_experiment, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GraduateCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :campaign_experiment, 1, required: true, type: :string
  field :campaign_budget, 2, required: true, type: :string
  field :validate_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.GraduateCampaignExperimentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :graduated_campaign, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.PromoteCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :campaign_experiment, 1, required: true, type: :string
  field :validate_only, 2, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.EndCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :campaign_experiment, 1, required: true, type: :string
  field :validate_only, 2, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.ListCampaignExperimentAsyncErrorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
  field :page_token, 2, optional: true, type: :string
  field :page_size, 3, optional: true, type: :int32
end

defmodule Google.Ads.Googleads.V8.Services.ListCampaignExperimentAsyncErrorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CampaignExperimentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignExperimentService"

  rpc :GetCampaignExperiment,
      Google.Ads.Googleads.V8.Services.GetCampaignExperimentRequest,
      Google.Ads.Googleads.V8.Resources.CampaignExperiment

  rpc :CreateCampaignExperiment,
      Google.Ads.Googleads.V8.Services.CreateCampaignExperimentRequest,
      Google.Longrunning.Operation

  rpc :MutateCampaignExperiments,
      Google.Ads.Googleads.V8.Services.MutateCampaignExperimentsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignExperimentsResponse

  rpc :GraduateCampaignExperiment,
      Google.Ads.Googleads.V8.Services.GraduateCampaignExperimentRequest,
      Google.Ads.Googleads.V8.Services.GraduateCampaignExperimentResponse

  rpc :PromoteCampaignExperiment,
      Google.Ads.Googleads.V8.Services.PromoteCampaignExperimentRequest,
      Google.Longrunning.Operation

  rpc :EndCampaignExperiment,
      Google.Ads.Googleads.V8.Services.EndCampaignExperimentRequest,
      Google.Protobuf.Empty

  rpc :ListCampaignExperimentAsyncErrors,
      Google.Ads.Googleads.V8.Services.ListCampaignExperimentAsyncErrorsRequest,
      Google.Ads.Googleads.V8.Services.ListCampaignExperimentAsyncErrorsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignExperimentService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignExperimentService.Service
end
