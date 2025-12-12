defmodule Google.Ads.Googleads.V8Availabilities.Services.GetConversionCustomVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariablesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ConversionCustomVariableOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionCustomVariableOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionCustomVariable, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionCustomVariable, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariableResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariableResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string

  field :conversion_custom_variable, 2,
    type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionCustomVariable
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionCustomVariableService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.ConversionCustomVariableService"

  rpc :GetConversionCustomVariable,
      Google.Ads.Googleads.V8Availabilities.Services.GetConversionCustomVariableRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.ConversionCustomVariable

  rpc :MutateConversionCustomVariables,
      Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariablesRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariablesResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionCustomVariableService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.ConversionCustomVariableService.Service
end
