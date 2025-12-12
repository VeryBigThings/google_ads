defmodule Google.Ads.Googleads.V8.Services.GetFeedMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedMappingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.FeedMappingOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.FeedMappingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedMapping, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedMappingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedMappingResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedMappingResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :feed_mapping, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedMapping
end

defmodule Google.Ads.Googleads.V8.Services.FeedMappingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.FeedMappingService"

  rpc :GetFeedMapping,
      Google.Ads.Googleads.V8.Services.GetFeedMappingRequest,
      Google.Ads.Googleads.V8.Resources.FeedMapping

  rpc :MutateFeedMappings,
      Google.Ads.Googleads.V8.Services.MutateFeedMappingsRequest,
      Google.Ads.Googleads.V8.Services.MutateFeedMappingsResponse
end

defmodule Google.Ads.Googleads.V8.Services.FeedMappingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.FeedMappingService.Service
end
