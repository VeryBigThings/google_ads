defmodule Google.Ads.Googleads.V8.Services.GetCustomerUserAccessInvitationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operation, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationOperation
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomerUserAccessInvitation,
    oneof: 0

  field :remove, 2, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :result, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerUserAccessInvitationService"

  rpc :GetCustomerUserAccessInvitation,
      Google.Ads.Googleads.V8.Services.GetCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V8.Resources.CustomerUserAccessInvitation

  rpc :MutateCustomerUserAccessInvitation,
      Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationService.Service
end
