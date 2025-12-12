defmodule Google.Ads.Googleads.V7.Services.UploadUserDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :metadata, 0

  field :customer_id, 1, type: :string
  field :operations, 3, repeated: true, type: Google.Ads.Googleads.V7.Services.UserDataOperation

  field :customer_match_user_list_metadata, 2,
    type: Google.Ads.Googleads.V7.Common.CustomerMatchUserListMetadata,
    oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.UserDataOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V7.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V7.Common.UserData, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.UploadUserDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :upload_date_time, 3, type: :string
  field :received_operations_count, 4, type: :int32
end

defmodule Google.Ads.Googleads.V7.Services.UserDataService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.UserDataService"

  rpc :UploadUserData,
      Google.Ads.Googleads.V7.Services.UploadUserDataRequest,
      Google.Ads.Googleads.V7.Services.UploadUserDataResponse
end

defmodule Google.Ads.Googleads.V7.Services.UserDataService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.UserDataService.Service
end
