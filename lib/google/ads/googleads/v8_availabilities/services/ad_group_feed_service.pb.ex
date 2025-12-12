defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.AdGroupFeedOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupFeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupFeed, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupFeed, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupFeedResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :ad_group_feed, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.AdGroupFeed
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupFeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AdGroupFeedService"

  rpc :GetAdGroupFeed,
      Google.Ads.Googleads.V8Availabilities.Services.GetAdGroupFeedRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.AdGroupFeed

  rpc :MutateAdGroupFeeds,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupFeedsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdGroupFeedsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdGroupFeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AdGroupFeedService.Service
end
