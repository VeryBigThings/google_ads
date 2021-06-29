defmodule Google.Ads.Googleads.V8Availabilities.Services.GetConversionCustomVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariablesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.ConversionCustomVariableOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

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

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionCustomVariable, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionCustomVariable, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariableResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariableResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionCustomVariableResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          conversion_custom_variable:
            Google.Ads.Googleads.V8Availabilities.Resources.ConversionCustomVariable.t() | nil
        }

  defstruct [:resource_name, :conversion_custom_variable]

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
