defmodule Google.Ads.Googleads.V8.Services.GetCustomAudienceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomAudiencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.CustomAudienceOperation.t()],
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :validate_only]

  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CustomAudienceOperation

  field :validate_only, 3, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CustomAudienceOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask

  field :create, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomAudience,
    oneof: 0

  field :update, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.CustomAudience,
    oneof: 0

  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomAudiencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8.Services.MutateCustomAudienceResult.t()]
        }

  defstruct [:results]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomAudienceResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomAudienceResult do
  @moduledoc false
  use Protobuf, syntax: :proto2

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CustomAudienceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomAudienceService"

  rpc :GetCustomAudience,
      Google.Ads.Googleads.V8.Services.GetCustomAudienceRequest,
      Google.Ads.Googleads.V8.Resources.CustomAudience

  rpc :MutateCustomAudiences,
      Google.Ads.Googleads.V8.Services.MutateCustomAudiencesRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomAudiencesResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomAudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CustomAudienceService.Service
end
