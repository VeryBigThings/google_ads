defmodule Google.Ads.Googleads.V7.Services.GetAdParameterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.AdParameterOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.AdParameterOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.AdParameter, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.AdParameter, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdParametersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateAdParameterResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdParameterResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :ad_parameter, 2, type: Google.Ads.Googleads.V7.Resources.AdParameter
end

defmodule Google.Ads.Googleads.V7.Services.AdParameterService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AdParameterService"

  rpc :GetAdParameter,
      Google.Ads.Googleads.V7.Services.GetAdParameterRequest,
      Google.Ads.Googleads.V7.Resources.AdParameter

  rpc :MutateAdParameters,
      Google.Ads.Googleads.V7.Services.MutateAdParametersRequest,
      Google.Ads.Googleads.V7.Services.MutateAdParametersResponse
end

defmodule Google.Ads.Googleads.V7.Services.AdParameterService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AdParameterService.Service
end
