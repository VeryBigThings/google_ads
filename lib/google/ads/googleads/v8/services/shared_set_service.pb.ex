defmodule Google.Ads.Googleads.V8.Services.GetSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.SharedSetOperation
  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.SharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.SharedSet, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.SharedSet, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateSharedSetResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :shared_set, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.SharedSet
end

defmodule Google.Ads.Googleads.V8.Services.SharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.SharedSetService"

  rpc :GetSharedSet,
      Google.Ads.Googleads.V8.Services.GetSharedSetRequest,
      Google.Ads.Googleads.V8.Resources.SharedSet

  rpc :MutateSharedSets,
      Google.Ads.Googleads.V8.Services.MutateSharedSetsRequest,
      Google.Ads.Googleads.V8.Services.MutateSharedSetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.SharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.SharedSetService.Service
end
