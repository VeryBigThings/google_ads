defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomerClientLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerClientLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V8Availabilities.Services.CustomerClientLinkOperation.t() | nil,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :validate_only]

  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V8Availabilities.Services.CustomerClientLinkOperation
  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerClientLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomerClientLink, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomerClientLink, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerClientLinkResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerClientLinkResult.t() | nil
        }

  defstruct [:result]

  field :result, 1, type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerClientLinkResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerClientLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerClientLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomerClientLinkService"

  rpc :GetCustomerClientLink,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomerClientLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CustomerClientLink

  rpc :MutateCustomerClientLink,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerClientLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomerClientLinkResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomerClientLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CustomerClientLinkService.Service
end
