defmodule Google.Ads.Googleads.V8.Services.GetRemarketingActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateRemarketingActionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.RemarketingActionOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.RemarketingActionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.RemarketingAction,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.RemarketingAction,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateRemarketingActionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateRemarketingActionResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateRemarketingActionResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.RemarketingActionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.RemarketingActionService"

  rpc :GetRemarketingAction,
      Google.Ads.Googleads.V8.Services.GetRemarketingActionRequest,
      Google.Ads.Googleads.V8.Resources.RemarketingAction

  rpc :MutateRemarketingActions,
      Google.Ads.Googleads.V8.Services.MutateRemarketingActionsRequest,
      Google.Ads.Googleads.V8.Services.MutateRemarketingActionsResponse
end

defmodule Google.Ads.Googleads.V8.Services.RemarketingActionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.RemarketingActionService.Service
end
