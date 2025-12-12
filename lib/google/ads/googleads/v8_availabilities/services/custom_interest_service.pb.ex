defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomInterestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomInterestsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomInterestOperation

  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomInterestOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomInterest, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomInterest, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomInterestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomInterestResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomInterestResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomInterestService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomInterestService"

  rpc :GetCustomInterest,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomInterestRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CustomInterest

  rpc :MutateCustomInterests,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomInterestsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomInterestsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomInterestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CustomInterestService.Service
end
