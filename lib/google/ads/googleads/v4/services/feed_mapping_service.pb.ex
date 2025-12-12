defmodule Google.Ads.Googleads.V4.Services.GetFeedMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateFeedMappingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.FeedMappingOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.FeedMappingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V4.Resources.FeedMapping, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateFeedMappingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateFeedMappingResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateFeedMappingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.FeedMappingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.FeedMappingService"

  rpc :GetFeedMapping,
      Google.Ads.Googleads.V4.Services.GetFeedMappingRequest,
      Google.Ads.Googleads.V4.Resources.FeedMapping

  rpc :MutateFeedMappings,
      Google.Ads.Googleads.V4.Services.MutateFeedMappingsRequest,
      Google.Ads.Googleads.V4.Services.MutateFeedMappingsResponse
end

defmodule Google.Ads.Googleads.V4.Services.FeedMappingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.FeedMappingService.Service
end
