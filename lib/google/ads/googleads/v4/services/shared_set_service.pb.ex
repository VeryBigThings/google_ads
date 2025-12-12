defmodule Google.Ads.Googleads.V4.Services.GetSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.SharedSetOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.SharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.SharedSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.SharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MutateSharedSetResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.SharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.SharedSetService"

  rpc :GetSharedSet,
      Google.Ads.Googleads.V4.Services.GetSharedSetRequest,
      Google.Ads.Googleads.V4.Resources.SharedSet

  rpc :MutateSharedSets,
      Google.Ads.Googleads.V4.Services.MutateSharedSetsRequest,
      Google.Ads.Googleads.V4.Services.MutateSharedSetsResponse
end

defmodule Google.Ads.Googleads.V4.Services.SharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.SharedSetService.Service
end
