defmodule Google.Ads.Googleads.V7.Services.GetAdGroupCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.AdGroupCriterionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask

  field :exempt_policy_violation_keys, 5,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.PolicyViolationKey

  field :create, 1, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_group_criterion, 2, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AdGroupCriterionService"

  rpc :GetAdGroupCriterion,
      Google.Ads.Googleads.V7.Services.GetAdGroupCriterionRequest,
      Google.Ads.Googleads.V7.Resources.AdGroupCriterion

  rpc :MutateAdGroupCriteria,
      Google.Ads.Googleads.V7.Services.MutateAdGroupCriteriaRequest,
      Google.Ads.Googleads.V7.Services.MutateAdGroupCriteriaResponse
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AdGroupCriterionService.Service
end
