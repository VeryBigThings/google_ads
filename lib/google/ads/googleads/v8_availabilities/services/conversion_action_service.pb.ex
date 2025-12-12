defmodule Google.Ads.Googleads.V8Availabilities.Services.GetConversionActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionActionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ConversionActionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionActionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionActionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateConversionActionResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateConversionActionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :conversion_action, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionActionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.ConversionActionService"

  rpc :GetConversionAction,
      Google.Ads.Googleads.V8Availabilities.Services.GetConversionActionRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.ConversionAction

  rpc :MutateConversionActions,
      Google.Ads.Googleads.V8Availabilities.Services.MutateConversionActionsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateConversionActionsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionActionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.ConversionActionService.Service
end
