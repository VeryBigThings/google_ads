defmodule Google.Ads.Googleads.V8.Services.GetFeedItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.FeedItemOperation
  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedItem, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedItem, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateFeedItemResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :feed_item, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedItem
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.FeedItemService"

  rpc :GetFeedItem,
      Google.Ads.Googleads.V8.Services.GetFeedItemRequest,
      Google.Ads.Googleads.V8.Resources.FeedItem

  rpc :MutateFeedItems,
      Google.Ads.Googleads.V8.Services.MutateFeedItemsRequest,
      Google.Ads.Googleads.V8.Services.MutateFeedItemsResponse
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.FeedItemService.Service
end
