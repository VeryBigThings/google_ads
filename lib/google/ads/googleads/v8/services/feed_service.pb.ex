defmodule Google.Ads.Googleads.V8.Services.GetFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.FeedOperation
  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.FeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.Feed, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.Feed, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateFeedResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :feed, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.Feed
end

defmodule Google.Ads.Googleads.V8.Services.FeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.FeedService"

  rpc :GetFeed,
      Google.Ads.Googleads.V8.Services.GetFeedRequest,
      Google.Ads.Googleads.V8.Resources.Feed

  rpc :MutateFeeds,
      Google.Ads.Googleads.V8.Services.MutateFeedsRequest,
      Google.Ads.Googleads.V8.Services.MutateFeedsResponse
end

defmodule Google.Ads.Googleads.V8.Services.FeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.FeedService.Service
end
