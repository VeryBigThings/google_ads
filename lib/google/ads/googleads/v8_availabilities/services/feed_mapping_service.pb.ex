defmodule Google.Ads.Googleads.V8Availabilities.Services.GetFeedMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedMappingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.FeedMappingOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedMappingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.FeedMapping, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedMappingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateFeedMappingResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedMappingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :feed_mapping, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.FeedMapping
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedMappingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.FeedMappingService"

  rpc :GetFeedMapping,
      Google.Ads.Googleads.V8Availabilities.Services.GetFeedMappingRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.FeedMapping

  rpc :MutateFeedMappings,
      Google.Ads.Googleads.V8Availabilities.Services.MutateFeedMappingsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateFeedMappingsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedMappingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.FeedMappingService.Service
end
