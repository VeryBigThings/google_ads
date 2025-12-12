defmodule Google.Ads.Googleads.V8Availabilities.Services.GetFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.FeedOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.Feed, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.Feed, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.MutateFeedResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :feed, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.Feed
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.FeedService"

  rpc :GetFeed,
      Google.Ads.Googleads.V8Availabilities.Services.GetFeedRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.Feed

  rpc :MutateFeeds,
      Google.Ads.Googleads.V8Availabilities.Services.MutateFeedsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateFeedsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.FeedService.Service
end
