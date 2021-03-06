defmodule Google.Ads.Googleads.V4.Services.GetCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignExperimentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V4.Services.CampaignExperimentOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }
  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.CampaignExperimentOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.CampaignExperimentOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }
  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :update, 1, type: Google.Ads.Googleads.V4.Resources.CampaignExperiment, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignExperimentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.MutateCampaignExperimentResult.t()]
        }
  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateCampaignExperimentResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateCampaignExperimentResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.CreateCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          campaign_experiment: Google.Ads.Googleads.V4.Resources.CampaignExperiment.t() | nil,
          validate_only: boolean
        }
  defstruct [:customer_id, :campaign_experiment, :validate_only]

  field :customer_id, 1, type: :string
  field :campaign_experiment, 2, type: Google.Ads.Googleads.V4.Resources.CampaignExperiment
  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.CreateCampaignExperimentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_experiment: String.t()
        }
  defstruct [:campaign_experiment]

  field :campaign_experiment, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GraduateCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_experiment: String.t(),
          campaign_budget: String.t()
        }
  defstruct [:campaign_experiment, :campaign_budget]

  field :campaign_experiment, 1, type: :string
  field :campaign_budget, 2, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GraduateCampaignExperimentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          graduated_campaign: String.t()
        }
  defstruct [:graduated_campaign]

  field :graduated_campaign, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.PromoteCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_experiment: String.t()
        }
  defstruct [:campaign_experiment]

  field :campaign_experiment, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.EndCampaignExperimentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_experiment: String.t()
        }
  defstruct [:campaign_experiment]

  field :campaign_experiment, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ListCampaignExperimentAsyncErrorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          page_token: String.t(),
          page_size: integer
        }
  defstruct [:resource_name, :page_token, :page_size]

  field :resource_name, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Ads.Googleads.V4.Services.ListCampaignExperimentAsyncErrorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Rpc.Status.t()],
          next_page_token: String.t()
        }
  defstruct [:errors, :next_page_token]

  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.CampaignExperimentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.CampaignExperimentService"

  rpc :GetCampaignExperiment,
      Google.Ads.Googleads.V4.Services.GetCampaignExperimentRequest,
      Google.Ads.Googleads.V4.Resources.CampaignExperiment

  rpc :CreateCampaignExperiment,
      Google.Ads.Googleads.V4.Services.CreateCampaignExperimentRequest,
      Google.Longrunning.Operation

  rpc :MutateCampaignExperiments,
      Google.Ads.Googleads.V4.Services.MutateCampaignExperimentsRequest,
      Google.Ads.Googleads.V4.Services.MutateCampaignExperimentsResponse

  rpc :GraduateCampaignExperiment,
      Google.Ads.Googleads.V4.Services.GraduateCampaignExperimentRequest,
      Google.Ads.Googleads.V4.Services.GraduateCampaignExperimentResponse

  rpc :PromoteCampaignExperiment,
      Google.Ads.Googleads.V4.Services.PromoteCampaignExperimentRequest,
      Google.Longrunning.Operation

  rpc :EndCampaignExperiment,
      Google.Ads.Googleads.V4.Services.EndCampaignExperimentRequest,
      Google.Protobuf.Empty

  rpc :ListCampaignExperimentAsyncErrors,
      Google.Ads.Googleads.V4.Services.ListCampaignExperimentAsyncErrorsRequest,
      Google.Ads.Googleads.V4.Services.ListCampaignExperimentAsyncErrorsResponse
end

defmodule Google.Ads.Googleads.V4.Services.CampaignExperimentService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.CampaignExperimentService.Service
end
