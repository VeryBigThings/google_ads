defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomerUserAccessInvitationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerUserAccessInvitationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation:
            Google.Ads.Googleads.V8Availabilities.Services.CustomerUserAccessInvitationOperation.t() | nil
        }

  defstruct [:customer_id, :operation]

  field :customer_id, 1, type: :string

  field :operation, 2,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomerUserAccessInvitationOperation
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerUserAccessInvitationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomerUserAccessInvitation, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerUserAccessInvitationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result:
            Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerUserAccessInvitationResult.t() | nil
        }

  defstruct [:result]

  field :result, 1,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerUserAccessInvitationResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerUserAccessInvitationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerUserAccessInvitationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomerUserAccessInvitationService"

  rpc :GetCustomerUserAccessInvitation,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CustomerUserAccessInvitation

  rpc :MutateCustomerUserAccessInvitation,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerUserAccessInvitationResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerUserAccessInvitationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8Availabilities.Services.CustomerUserAccessInvitationService.Service
end
