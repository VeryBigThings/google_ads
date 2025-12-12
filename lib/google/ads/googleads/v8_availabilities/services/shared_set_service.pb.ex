defmodule Google.Ads.Googleads.V8Availabilities.Services.GetSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.SharedSetOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.SharedSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.SharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :shared_set, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.SharedSet
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.SharedSetService"

  rpc :GetSharedSet,
      Google.Ads.Googleads.V8Availabilities.Services.GetSharedSetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.SharedSet

  rpc :MutateSharedSets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateSharedSetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.SharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.SharedSetService.Service
end
