defmodule Google.Ads.Googleads.V4.Services.GetCustomerFeedRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerFeedsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.CustomerFeedOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.CustomerFeedOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.CustomerFeed, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.CustomerFeed, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerFeedsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateCustomerFeedResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerFeedResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.CustomerFeedService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.CustomerFeedService"

  rpc :GetCustomerFeed,
      Google.Ads.Googleads.V4.Services.GetCustomerFeedRequest,
      Google.Ads.Googleads.V4.Resources.CustomerFeed

  rpc :MutateCustomerFeeds,
      Google.Ads.Googleads.V4.Services.MutateCustomerFeedsRequest,
      Google.Ads.Googleads.V4.Services.MutateCustomerFeedsResponse
end

defmodule Google.Ads.Googleads.V4.Services.CustomerFeedService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.CustomerFeedService.Service
end
