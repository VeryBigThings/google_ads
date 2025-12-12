defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAdParameterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.AdParameterOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdParameterOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.AdParameter, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AdParameter, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdParametersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateAdParameterResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdParameterResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :ad_parameter, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AdParameter
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdParameterService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AdParameterService"

  rpc :GetAdParameter,
      Google.Ads.Googleads.V8Availabilities.Services.GetAdParameterRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AdParameter

  rpc :MutateAdParameters,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdParametersRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdParametersResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdParameterService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AdParameterService.Service
end
