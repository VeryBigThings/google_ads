defmodule Google.Ads.Googleads.V8.Services.GetKeywordPlanAdGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanAdGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroup,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroup,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanAdGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlanAdGroupResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanAdGroupResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.KeywordPlanAdGroupService"

  rpc :GetKeywordPlanAdGroup,
      Google.Ads.Googleads.V8.Services.GetKeywordPlanAdGroupRequest,
      Google.Ads.Googleads.V8.Resources.KeywordPlanAdGroup

  rpc :MutateKeywordPlanAdGroups,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlanAdGroupsRequest,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlanAdGroupsResponse
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupService.Service
end
