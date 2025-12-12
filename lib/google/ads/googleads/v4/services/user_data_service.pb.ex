defmodule Google.Ads.Googleads.V4.Services.UploadUserDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :metadata, 0

  field :customer_id, 1, type: :string
  field :operations, 3, repeated: true, type: Google.Ads.Googleads.V4.Services.UserDataOperation

  field :customer_match_user_list_metadata, 2,
    type: Google.Ads.Googleads.V4.Common.CustomerMatchUserListMetadata,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.UserDataOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V4.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V4.Common.UserData, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.UploadUserDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :upload_date_time, 1, type: Google.Protobuf.StringValue
  field :received_operations_count, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V4.Services.UserDataService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.UserDataService"

  rpc :UploadUserData,
      Google.Ads.Googleads.V4.Services.UploadUserDataRequest,
      Google.Ads.Googleads.V4.Services.UploadUserDataResponse
end

defmodule Google.Ads.Googleads.V4.Services.UserDataService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.UserDataService.Service
end
