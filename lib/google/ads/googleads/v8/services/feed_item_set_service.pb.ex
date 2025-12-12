defmodule Google.Ads.Googleads.V8.Services.GetFeedItemSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.FeedItemSetOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedItemSet, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.FeedItemSet, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateFeedItemSetResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateFeedItemSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.FeedItemSetService"

  rpc :GetFeedItemSet,
      Google.Ads.Googleads.V8.Services.GetFeedItemSetRequest,
      Google.Ads.Googleads.V8.Resources.FeedItemSet

  rpc :MutateFeedItemSets,
      Google.Ads.Googleads.V8.Services.MutateFeedItemSetsRequest,
      Google.Ads.Googleads.V8.Services.MutateFeedItemSetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.FeedItemSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.FeedItemSetService.Service
end
