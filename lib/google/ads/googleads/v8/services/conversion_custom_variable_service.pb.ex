defmodule Google.Ads.Googleads.V8.Services.GetConversionCustomVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionCustomVariablesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.ConversionCustomVariableOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ConversionCustomVariableOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.ConversionCustomVariableOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 3, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionCustomVariable,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionCustomVariable,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionCustomVariablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateConversionCustomVariableResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateConversionCustomVariableResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionCustomVariableResult do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t(),
          conversion_custom_variable:
            Google.Ads.Googleads.V8.Resources.ConversionCustomVariable.t() | nil
        }

  defstruct [:resource_name, :conversion_custom_variable]

  field :resource_name, 1, optional: true, type: :string

  field :conversion_custom_variable, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionCustomVariable
end

defmodule Google.Ads.Googleads.V8.Services.ConversionCustomVariableService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ConversionCustomVariableService"

  rpc :GetConversionCustomVariable,
      Google.Ads.Googleads.V8.Services.GetConversionCustomVariableRequest,
      Google.Ads.Googleads.V8.Resources.ConversionCustomVariable

  rpc :MutateConversionCustomVariables,
      Google.Ads.Googleads.V8.Services.MutateConversionCustomVariablesRequest,
      Google.Ads.Googleads.V8.Services.MutateConversionCustomVariablesResponse
end

defmodule Google.Ads.Googleads.V8.Services.ConversionCustomVariableService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ConversionCustomVariableService.Service
end
