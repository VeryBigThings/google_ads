defmodule Google.Ads.Googleads.V8.Services.GetAdParameterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.AdParameterOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.AdParameterOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.AdParameter, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.AdParameter, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdParametersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdParameterResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateAdParameterResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :ad_parameter, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.AdParameter
end

defmodule Google.Ads.Googleads.V8.Services.AdParameterService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdParameterService"

  rpc :GetAdParameter,
      Google.Ads.Googleads.V8.Services.GetAdParameterRequest,
      Google.Ads.Googleads.V8.Resources.AdParameter

  rpc :MutateAdParameters,
      Google.Ads.Googleads.V8.Services.MutateAdParametersRequest,
      Google.Ads.Googleads.V8.Services.MutateAdParametersResponse
end

defmodule Google.Ads.Googleads.V8.Services.AdParameterService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdParameterService.Service
end
