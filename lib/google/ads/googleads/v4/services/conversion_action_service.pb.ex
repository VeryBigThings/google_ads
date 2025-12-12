defmodule Google.Ads.Googleads.V4.Services.GetConversionActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateConversionActionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.ConversionActionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.ConversionActionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.ConversionAction, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.ConversionAction, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateConversionActionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateConversionActionResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateConversionActionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ConversionActionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.ConversionActionService"

  rpc :GetConversionAction,
      Google.Ads.Googleads.V4.Services.GetConversionActionRequest,
      Google.Ads.Googleads.V4.Resources.ConversionAction

  rpc :MutateConversionActions,
      Google.Ads.Googleads.V4.Services.MutateConversionActionsRequest,
      Google.Ads.Googleads.V4.Services.MutateConversionActionsResponse
end

defmodule Google.Ads.Googleads.V4.Services.ConversionActionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.ConversionActionService.Service
end
