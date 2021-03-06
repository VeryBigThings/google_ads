defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomerManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.CustomerManagerLinkOperation.t()],
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomerManagerLinkOperation

  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MoveManagerLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          previous_customer_manager_link: String.t(),
          new_manager: String.t(),
          validate_only: boolean
        }

  defstruct [:customer_id, :previous_customer_manager_link, :new_manager, :validate_only]

  field :customer_id, 1, type: :string
  field :previous_customer_manager_link, 2, type: :string
  field :new_manager, 3, type: :string
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerManagerLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomerManagerLink, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerManagerLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerManagerLinkResult.t()]
        }

  defstruct [:results]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerManagerLinkResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MoveManagerLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerManagerLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerManagerLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomerManagerLinkService"

  rpc :GetCustomerManagerLink,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomerManagerLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CustomerManagerLink

  rpc :MutateCustomerManagerLink,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerManagerLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerManagerLinkResponse

  rpc :MoveManagerLink,
      Google.Ads.Googleads.V8Availabilities.Services.MoveManagerLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MoveManagerLinkResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerManagerLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CustomerManagerLinkService.Service
end
