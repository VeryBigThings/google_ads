defmodule Google.Ads.Googleads.V4.Services.GetCustomerExtensionSettingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V4.Services.CustomerExtensionSettingOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }
  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.CustomerExtensionSettingOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.CustomerExtensionSettingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }
  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.CustomerExtensionSetting, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.CustomerExtensionSetting, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingResult.t()]
        }
  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.CustomerExtensionSettingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.CustomerExtensionSettingService"

  rpc :GetCustomerExtensionSetting,
      Google.Ads.Googleads.V4.Services.GetCustomerExtensionSettingRequest,
      Google.Ads.Googleads.V4.Resources.CustomerExtensionSetting

  rpc :MutateCustomerExtensionSettings,
      Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingsRequest,
      Google.Ads.Googleads.V4.Services.MutateCustomerExtensionSettingsResponse
end

defmodule Google.Ads.Googleads.V4.Services.CustomerExtensionSettingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.CustomerExtensionSettingService.Service
end
