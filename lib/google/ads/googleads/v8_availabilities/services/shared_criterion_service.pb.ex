defmodule Google.Ads.Googleads.V8Availabilities.Services.GetSharedCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.SharedCriterionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.SharedCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateSharedCriterionResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :shared_criterion, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.SharedCriterion
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.SharedCriterionService"

  rpc :GetSharedCriterion,
      Google.Ads.Googleads.V8Availabilities.Services.GetSharedCriterionRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.SharedCriterion

  rpc :MutateSharedCriteria,
      Google.Ads.Googleads.V8Availabilities.Services.MutateSharedCriteriaRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateSharedCriteriaResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.SharedCriterionService.Service
end
