defmodule Google.Ads.Googleads.V11.Services.UploadUserDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata:
            {:customer_match_user_list_metadata,
             Google.Ads.Googleads.V11.Common.CustomerMatchUserListMetadata.t() | nil},
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V11.Services.UserDataOperation.t()]
        }

  defstruct metadata: nil,
            customer_id: "",
            operations: []

  oneof :metadata, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.UserDataOperation,
    deprecated: false

  field :customer_match_user_list_metadata, 2,
    type: Google.Ads.Googleads.V11.Common.CustomerMatchUserListMetadata,
    json_name: "customerMatchUserListMetadata",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.UserDataOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V11.Common.UserData.t() | nil}
            | {:remove, Google.Ads.Googleads.V11.Common.UserData.t() | nil}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V11.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V11.Common.UserData, oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.UploadUserDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          upload_date_time: String.t(),
          received_operations_count: integer
        }

  defstruct upload_date_time: "",
            received_operations_count: 0

  field :upload_date_time, 3, type: :string, json_name: "uploadDateTime"
  field :received_operations_count, 4, type: :int32, json_name: "receivedOperationsCount"
end
defmodule Google.Ads.Googleads.V11.Services.UserDataService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.UserDataService"

  rpc :UploadUserData,
      Google.Ads.Googleads.V11.Services.UploadUserDataRequest,
      Google.Ads.Googleads.V11.Services.UploadUserDataResponse
end

defmodule Google.Ads.Googleads.V11.Services.UserDataService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.UserDataService.Service
end
