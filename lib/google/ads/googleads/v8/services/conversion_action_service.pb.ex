defmodule Google.Ads.Googleads.V8.Services.GetConversionActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionActionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ConversionActionOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.ConversionActionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionAction,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionAction,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionActionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateConversionActionResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionActionResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :conversion_action, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.ConversionAction
end

defmodule Google.Ads.Googleads.V8.Services.ConversionActionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ConversionActionService"

  rpc :GetConversionAction,
      Google.Ads.Googleads.V8.Services.GetConversionActionRequest,
      Google.Ads.Googleads.V8.Resources.ConversionAction

  rpc :MutateConversionActions,
      Google.Ads.Googleads.V8.Services.MutateConversionActionsRequest,
      Google.Ads.Googleads.V8.Services.MutateConversionActionsResponse
end

defmodule Google.Ads.Googleads.V8.Services.ConversionActionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ConversionActionService.Service
end
