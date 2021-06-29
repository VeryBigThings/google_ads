defmodule Google.Ads.Googleads.V8Availabilities.Services.GetFeedItemTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.FeedItemTargetOperation.t()],
          partial_failure: boolean,
          response_content_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType.t(),
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :response_content_type, :validate_only]

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

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.FeedItemTarget, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemTargetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed_item_target: Google.Ads.Googleads.V8Availabilities.Resources.FeedItemTarget.t() | nil
        }

  defstruct [:resource_name, :feed_item_target]

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
