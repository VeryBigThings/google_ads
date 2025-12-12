defmodule Google.Ads.Googleads.V7.Services.GetRemarketingActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateRemarketingActionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.RemarketingActionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.RemarketingActionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.RemarketingAction, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.RemarketingAction, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateRemarketingActionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateRemarketingActionResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateRemarketingActionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.RemarketingActionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.RemarketingActionService"

  rpc :GetRemarketingAction,
      Google.Ads.Googleads.V7.Services.GetRemarketingActionRequest,
      Google.Ads.Googleads.V7.Resources.RemarketingAction

  rpc :MutateRemarketingActions,
      Google.Ads.Googleads.V7.Services.MutateRemarketingActionsRequest,
      Google.Ads.Googleads.V7.Services.MutateRemarketingActionsResponse
end

defmodule Google.Ads.Googleads.V7.Services.RemarketingActionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.RemarketingActionService.Service
end
