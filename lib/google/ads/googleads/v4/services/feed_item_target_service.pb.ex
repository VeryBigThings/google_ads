defmodule Google.Ads.Googleads.V4.Services.GetFeedItemTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateFeedItemTargetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.FeedItemTargetOperation
end

defmodule Google.Ads.Googleads.V4.Services.FeedItemTargetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V4.Resources.FeedItemTarget, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateFeedItemTargetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateFeedItemTargetResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateFeedItemTargetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.FeedItemTargetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.FeedItemTargetService"

  rpc :GetFeedItemTarget,
      Google.Ads.Googleads.V4.Services.GetFeedItemTargetRequest,
      Google.Ads.Googleads.V4.Resources.FeedItemTarget

  rpc :MutateFeedItemTargets,
      Google.Ads.Googleads.V4.Services.MutateFeedItemTargetsRequest,
      Google.Ads.Googleads.V4.Services.MutateFeedItemTargetsResponse
end

defmodule Google.Ads.Googleads.V4.Services.FeedItemTargetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.FeedItemTargetService.Service
end
