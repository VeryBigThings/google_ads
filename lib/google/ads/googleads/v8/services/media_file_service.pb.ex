defmodule Google.Ads.Googleads.V8.Services.GetMediaFileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateMediaFilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MediaFileOperation
  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.MediaFileOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.MediaFile, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateMediaFilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateMediaFileResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateMediaFileResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :media_file, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.MediaFile
end

defmodule Google.Ads.Googleads.V8.Services.MediaFileService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.MediaFileService"

  rpc :GetMediaFile,
      Google.Ads.Googleads.V8.Services.GetMediaFileRequest,
      Google.Ads.Googleads.V8.Resources.MediaFile

  rpc :MutateMediaFiles,
      Google.Ads.Googleads.V8.Services.MutateMediaFilesRequest,
      Google.Ads.Googleads.V8.Services.MutateMediaFilesResponse
end

defmodule Google.Ads.Googleads.V8.Services.MediaFileService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.MediaFileService.Service
end
