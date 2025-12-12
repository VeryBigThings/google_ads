defmodule Google.Ads.Googleads.V8Availabilities.Services.GetKeywordPlanAdGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateKeywordPlanAdGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.KeywordPlanAdGroupOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.KeywordPlanAdGroupOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanAdGroup, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanAdGroup, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateKeywordPlanAdGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateKeywordPlanAdGroupResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateKeywordPlanAdGroupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.KeywordPlanAdGroupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.KeywordPlanAdGroupService"

  rpc :GetKeywordPlanAdGroup,
      Google.Ads.Googleads.V8Availabilities.Services.GetKeywordPlanAdGroupRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanAdGroup

  rpc :MutateKeywordPlanAdGroups,
      Google.Ads.Googleads.V8Availabilities.Services.MutateKeywordPlanAdGroupsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateKeywordPlanAdGroupsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.KeywordPlanAdGroupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.KeywordPlanAdGroupService.Service
end
