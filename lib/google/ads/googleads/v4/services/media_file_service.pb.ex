defmodule Google.Ads.Googleads.V4.Services.GetMediaFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateMediaFilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MediaFileOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.MediaFileOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V4.Resources.MediaFile, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateMediaFilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.MutateMediaFileResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateMediaFileResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MediaFileService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.MediaFileService"

  rpc :GetMediaFile,
      Google.Ads.Googleads.V4.Services.GetMediaFileRequest,
      Google.Ads.Googleads.V4.Resources.MediaFile

  rpc :MutateMediaFiles,
      Google.Ads.Googleads.V4.Services.MutateMediaFilesRequest,
      Google.Ads.Googleads.V4.Services.MutateMediaFilesResponse
end

defmodule Google.Ads.Googleads.V4.Services.MediaFileService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.MediaFileService.Service
end
