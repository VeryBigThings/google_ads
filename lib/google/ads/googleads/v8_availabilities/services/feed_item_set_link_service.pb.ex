defmodule Google.Ads.Googleads.V8Availabilities.Services.GetFeedItemSetLinkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemSetLinksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.FeedItemSetLinkOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.FeedItemSetLinkOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedItemSetLinkOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.FeedItemSetLink, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemSetLinksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemSetLinkResult.t()]
        }

  defstruct [:results]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemSetLinkResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemSetLinkResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedItemSetLinkService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.FeedItemSetLinkService"

  rpc :GetFeedItemSetLink,
      Google.Ads.Googleads.V8Availabilities.Services.GetFeedItemSetLinkRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.FeedItemSetLink

  rpc :MutateFeedItemSetLinks,
      Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemSetLinksRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateFeedItemSetLinksResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FeedItemSetLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.FeedItemSetLinkService.Service
end
