defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.AdGroupOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroup, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroup, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :ad_group, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroup
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AdGroupService"

  rpc :GetAdGroup,
      Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AdGroup

  rpc :MutateAdGroups,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AdGroupService.Service
end
