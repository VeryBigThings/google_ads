defmodule Google.Ads.Googleads.V13.Services.UploadUserDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :metadata, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V13.Services.UserDataOperation,
    deprecated: false

  field :customer_match_user_list_metadata, 2,
    type: Google.Ads.Googleads.V13.Common.CustomerMatchUserListMetadata,
    json_name: "customerMatchUserListMetadata",
    oneof: 0
end

defmodule Google.Ads.Googleads.V13.Services.UserDataOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V13.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V13.Common.UserData, oneof: 0
end

defmodule Google.Ads.Googleads.V13.Services.UploadUserDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :upload_date_time, 3, type: :string, json_name: "uploadDateTime"
  field :received_operations_count, 4, type: :int32, json_name: "receivedOperationsCount"
end

defmodule Google.Ads.Googleads.V13.Services.UserDataService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v13.services.UserDataService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :UploadUserData,
      Google.Ads.Googleads.V13.Services.UploadUserDataRequest,
      Google.Ads.Googleads.V13.Services.UploadUserDataResponse
end

defmodule Google.Ads.Googleads.V13.Services.UserDataService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V13.Services.UserDataService.Service
end