defmodule Google.Ads.Googleads.V8.Services.GetIncomeRangeViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.IncomeRangeViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.IncomeRangeViewService"

  rpc :GetIncomeRangeView,
      Google.Ads.Googleads.V8.Services.GetIncomeRangeViewRequest,
      Google.Ads.Googleads.V8.Resources.IncomeRangeView
end

defmodule Google.Ads.Googleads.V8.Services.IncomeRangeViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.IncomeRangeViewService.Service
end
