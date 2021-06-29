defmodule Google.Ads.Googleads.V8Availabilities.Services.GetIncomeRangeViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.IncomeRangeViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.IncomeRangeViewService"

  rpc :GetIncomeRangeView,
      Google.Ads.Googleads.V8Availabilities.Services.GetIncomeRangeViewRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.IncomeRangeView
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.IncomeRangeViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.IncomeRangeViewService.Service
end
