defmodule Google.Ads.Googleads.V8.Services.GetCustomInterestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomInterestsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CustomInterestOperation

  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CustomInterestOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomInterest,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomInterest,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomInterestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomInterestResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomInterestResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CustomInterestService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomInterestService"

  rpc :GetCustomInterest,
      Google.Ads.Googleads.V8.Services.GetCustomInterestRequest,
      Google.Ads.Googleads.V8.Resources.CustomInterest

  rpc :MutateCustomInterests,
      Google.Ads.Googleads.V8.Services.MutateCustomInterestsRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomInterestsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomInterestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomInterestService.Service
end
