defmodule Google.Ads.Googleads.V11.Services.MutateAdGroupCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V11.Services.AdGroupCriterionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AdGroupCriterionOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Services.AdGroupCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V11.Resources.AdGroupCriterion.t() | nil}
            | {:update, Google.Ads.Googleads.V11.Resources.AdGroupCriterion.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          exempt_policy_violation_keys: [Google.Ads.Googleads.V11.Common.PolicyViolationKey.t()]
        }

  defstruct operation: nil,
            update_mask: nil,
            exempt_policy_violation_keys: []

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :exempt_policy_violation_keys, 5,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.PolicyViolationKey,
    json_name: "exemptPolicyViolationKeys"

  field :create, 1, type: Google.Ads.Googleads.V11.Resources.AdGroupCriterion, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V11.Resources.AdGroupCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.MutateAdGroupCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionResult
end
defmodule Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_criterion: Google.Ads.Googleads.V11.Resources.AdGroupCriterion.t() | nil
        }

  defstruct resource_name: "",
            ad_group_criterion: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_criterion, 2,
    type: Google.Ads.Googleads.V11.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion"
end
defmodule Google.Ads.Googleads.V11.Services.AdGroupCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.AdGroupCriterionService"

  rpc :MutateAdGroupCriteria,
      Google.Ads.Googleads.V11.Services.MutateAdGroupCriteriaRequest,
      Google.Ads.Googleads.V11.Services.MutateAdGroupCriteriaResponse
end

defmodule Google.Ads.Googleads.V11.Services.AdGroupCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.AdGroupCriterionService.Service
end