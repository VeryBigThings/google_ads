defmodule Google.Ads.Googleads.V4.Services.GetUserListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateUserListsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.UserListOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.UserListOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.UserList, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.UserList, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateUserListsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MutateUserListResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateUserListResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.UserListService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.UserListService"

  rpc :GetUserList,
      Google.Ads.Googleads.V4.Services.GetUserListRequest,
      Google.Ads.Googleads.V4.Resources.UserList

  rpc :MutateUserLists,
      Google.Ads.Googleads.V4.Services.MutateUserListsRequest,
      Google.Ads.Googleads.V4.Services.MutateUserListsResponse
end

defmodule Google.Ads.Googleads.V4.Services.UserListService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.UserListService.Service
end
