defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAccountBudgetProposalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAccountBudgetProposalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V8Availabilities.Services.AccountBudgetProposalOperation.t() | nil,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :validate_only]

  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V8Availabilities.Services.AccountBudgetProposalOperation
  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AccountBudgetProposalOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :create, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AccountBudgetProposal, oneof: 0
  field :remove, 1, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAccountBudgetProposalResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V8Availabilities.Services.MutateAccountBudgetProposalResult.t() | nil
        }

  defstruct [:result]

  field :result, 2, type: Google.Ads.Googleads.V8Availabilities.Services.MutateAccountBudgetProposalResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAccountBudgetProposalResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AccountBudgetProposalService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AccountBudgetProposalService"

  rpc :GetAccountBudgetProposal,
      Google.Ads.Googleads.V8Availabilities.Services.GetAccountBudgetProposalRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AccountBudgetProposal

  rpc :MutateAccountBudgetProposal,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAccountBudgetProposalRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAccountBudgetProposalResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AccountBudgetProposalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AccountBudgetProposalService.Service
end
