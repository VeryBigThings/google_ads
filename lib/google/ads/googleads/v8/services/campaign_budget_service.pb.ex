defmodule Google.Ads.Googleads.V8.Services.GetCampaignBudgetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignBudgetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.CampaignBudgetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignBudgetOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CampaignBudgetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBudget,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBudget,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignBudgetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateCampaignBudgetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignBudgetResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignBudgetResult do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign_budget: Google.Ads.Googleads.V8.Resources.CampaignBudget.t() | nil
        }

  defstruct [:resource_name, :campaign_budget]

  field :resource_name, 1, optional: true, type: :string

  field :campaign_budget, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CampaignBudget
end

defmodule Google.Ads.Googleads.V8.Services.CampaignBudgetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignBudgetService"

  rpc :GetCampaignBudget,
      Google.Ads.Googleads.V8.Services.GetCampaignBudgetRequest,
      Google.Ads.Googleads.V8.Resources.CampaignBudget

  rpc :MutateCampaignBudgets,
      Google.Ads.Googleads.V8.Services.MutateCampaignBudgetsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignBudgetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignBudgetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignBudgetService.Service
end
