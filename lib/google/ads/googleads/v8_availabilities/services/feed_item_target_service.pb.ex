defmodule Google.Ads.Googleads.V8Availabilities.Services.GetFeedItemTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.FeedItemTargetOperation

  field :partial_failure, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true

  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedItemTargetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.FeedItemTarget, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :feed_item_target, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.FeedItemTarget
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedItemTargetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.FeedItemTargetService"

  rpc :GetFeedItemTarget,
      Google.Ads.Googleads.V8Availabilities.Services.GetFeedItemTargetRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.FeedItemTarget

  rpc :MutateFeedItemTargets,
      Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedItemTargetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.FeedItemTargetService.Service
end
