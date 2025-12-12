defmodule Google.Ads.Googleads.V8.Services.GetSharedCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateSharedCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.SharedCriterionOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.SharedCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.SharedCriterion,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateSharedCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateSharedCriterionResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateSharedCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :shared_criterion, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.SharedCriterion
end

defmodule Google.Ads.Googleads.V8.Services.SharedCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.SharedCriterionService"

  rpc :GetSharedCriterion,
      Google.Ads.Googleads.V8.Services.GetSharedCriterionRequest,
      Google.Ads.Googleads.V8.Resources.SharedCriterion

  rpc :MutateSharedCriteria,
      Google.Ads.Googleads.V8.Services.MutateSharedCriteriaRequest,
      Google.Ads.Googleads.V8.Services.MutateSharedCriteriaResponse
end

defmodule Google.Ads.Googleads.V8.Services.SharedCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.SharedCriterionService.Service
end
