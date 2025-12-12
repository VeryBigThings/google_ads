defmodule Google.Ads.Googleads.V4.Services.GetSharedCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateSharedCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.SharedCriterionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.SharedCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V4.Resources.SharedCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateSharedCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateSharedCriterionResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateSharedCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.SharedCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.SharedCriterionService"

  rpc :GetSharedCriterion,
      Google.Ads.Googleads.V4.Services.GetSharedCriterionRequest,
      Google.Ads.Googleads.V4.Resources.SharedCriterion

  rpc :MutateSharedCriteria,
      Google.Ads.Googleads.V4.Services.MutateSharedCriteriaRequest,
      Google.Ads.Googleads.V4.Services.MutateSharedCriteriaResponse
end

defmodule Google.Ads.Googleads.V4.Services.SharedCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.SharedCriterionService.Service
end
