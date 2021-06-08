defmodule Google.Ads.Googleads.V7.Services.GetAccountBudgetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.AccountBudgetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AccountBudgetService"

  rpc :GetAccountBudget,
      Google.Ads.Googleads.V7.Services.GetAccountBudgetRequest,
      Google.Ads.Googleads.V7.Resources.AccountBudget
end

defmodule Google.Ads.Googleads.V7.Services.AccountBudgetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AccountBudgetService.Service
end
