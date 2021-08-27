defmodule Google.Ads.Googleads.V8.Services.UploadUserDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: {atom, any},
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.UserDataOperation.t()]
        }
  defstruct [:metadata, :customer_id, :operations]

  oneof :metadata, 0

  field :customer_id, 1, type: :string
  field :operations, 3, repeated: true, type: Google.Ads.Googleads.V8.Services.UserDataOperation

  field :customer_match_user_list_metadata, 2,
    type: Google.Ads.Googleads.V8.Common.CustomerMatchUserListMetadata,
    oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.UserDataOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }
  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V8.Common.UserData, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.UploadUserDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          upload_date_time: String.t(),
          received_operations_count: integer
        }
  defstruct [:upload_date_time, :received_operations_count]

  field :upload_date_time, 3, type: :string
  field :received_operations_count, 4, type: :int32
end

defmodule Google.Ads.Googleads.V8.Services.UserDataService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.UserDataService"

  rpc :UploadUserData,
      Google.Ads.Googleads.V8.Services.UploadUserDataRequest,
      Google.Ads.Googleads.V8.Services.UploadUserDataResponse
end

defmodule Google.Ads.Googleads.V8.Services.UserDataService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.UserDataService.Service
end
