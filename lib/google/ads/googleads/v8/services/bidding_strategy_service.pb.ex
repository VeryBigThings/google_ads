defmodule Google.Ads.Googleads.V8.Services.GetBiddingStrategyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateBiddingStrategiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.BiddingStrategyOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool

  field :response_content_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.BiddingStrategyOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.BiddingStrategy,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.BiddingStrategy,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateBiddingStrategiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateBiddingStrategyResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateBiddingStrategyResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string

  field :bidding_strategy, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.BiddingStrategy
end

defmodule Google.Ads.Googleads.V8.Services.BiddingStrategyService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.BiddingStrategyService"

  rpc :GetBiddingStrategy,
      Google.Ads.Googleads.V8.Services.GetBiddingStrategyRequest,
      Google.Ads.Googleads.V8.Resources.BiddingStrategy

  rpc :MutateBiddingStrategies,
      Google.Ads.Googleads.V8.Services.MutateBiddingStrategiesRequest,
      Google.Ads.Googleads.V8.Services.MutateBiddingStrategiesResponse
end

defmodule Google.Ads.Googleads.V8.Services.BiddingStrategyService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.BiddingStrategyService.Service
end
