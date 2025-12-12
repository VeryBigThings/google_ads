defmodule Google.Ads.Googleads.V7.Services.GetCustomerNegativeCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerNegativeCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.CustomerNegativeCriterionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.CustomerNegativeCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V7.Resources.CustomerNegativeCriterion, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerNegativeCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateCustomerNegativeCriteriaResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerNegativeCriteriaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :customer_negative_criterion, 2,
    type: Google.Ads.Googleads.V7.Resources.CustomerNegativeCriterion
end

defmodule Google.Ads.Googleads.V7.Services.CustomerNegativeCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CustomerNegativeCriterionService"

  rpc :GetCustomerNegativeCriterion,
      Google.Ads.Googleads.V7.Services.GetCustomerNegativeCriterionRequest,
      Google.Ads.Googleads.V7.Resources.CustomerNegativeCriterion

  rpc :MutateCustomerNegativeCriteria,
      Google.Ads.Googleads.V7.Services.MutateCustomerNegativeCriteriaRequest,
      Google.Ads.Googleads.V7.Services.MutateCustomerNegativeCriteriaResponse
end

defmodule Google.Ads.Googleads.V7.Services.CustomerNegativeCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V7.Services.CustomerNegativeCriterionService.Service
end
