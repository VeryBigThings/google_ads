defmodule Google.Ads.Googleads.V7.Services.GetFeedItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.FeedItemOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.FeedItemOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.FeedItem, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.FeedItem, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.MutateFeedItemResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateFeedItemResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
  field :feed_item, 2, type: Google.Ads.Googleads.V7.Resources.FeedItem
end

defmodule Google.Ads.Googleads.V7.Services.FeedItemService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.FeedItemService"

  rpc :GetFeedItem,
      Google.Ads.Googleads.V7.Services.GetFeedItemRequest,
      Google.Ads.Googleads.V7.Resources.FeedItem

  rpc :MutateFeedItems,
      Google.Ads.Googleads.V7.Services.MutateFeedItemsRequest,
      Google.Ads.Googleads.V7.Services.MutateFeedItemsResponse
end

defmodule Google.Ads.Googleads.V7.Services.FeedItemService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.FeedItemService.Service
end
