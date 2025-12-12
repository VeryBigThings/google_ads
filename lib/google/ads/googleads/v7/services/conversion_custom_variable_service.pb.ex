defmodule Google.Ads.Googleads.V7.Services.GetConversionCustomVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateConversionCustomVariablesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.ConversionCustomVariableOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.ConversionCustomVariableOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.ConversionCustomVariable, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.ConversionCustomVariable, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateConversionCustomVariablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateConversionCustomVariableResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateConversionCustomVariableResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string

  field :conversion_custom_variable, 2,
    type: Google.Ads.Googleads.V7.Resources.ConversionCustomVariable
end

defmodule Google.Ads.Googleads.V7.Services.ConversionCustomVariableService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.ConversionCustomVariableService"

  rpc :GetConversionCustomVariable,
      Google.Ads.Googleads.V7.Services.GetConversionCustomVariableRequest,
      Google.Ads.Googleads.V7.Resources.ConversionCustomVariable

  rpc :MutateConversionCustomVariables,
      Google.Ads.Googleads.V7.Services.MutateConversionCustomVariablesRequest,
      Google.Ads.Googleads.V7.Services.MutateConversionCustomVariablesResponse
end

defmodule Google.Ads.Googleads.V7.Services.ConversionCustomVariableService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.ConversionCustomVariableService.Service
end
