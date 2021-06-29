defmodule Google.Ads.Googleads.V8Availabilities.Services.GetCustomAudienceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudiencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceOperation.t()],
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceOperation

  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomAudience, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.CustomAudience, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudiencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudienceResult.t()]
        }

  defstruct [:results]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudienceResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudienceResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.CustomAudienceService"

  rpc :GetCustomAudience,
      Google.Ads.Googleads.V8Availabilities.Services.GetCustomAudienceRequest,
      Google.Ads.Googleads.V8Availabilities.Resources.CustomAudience

  rpc :MutateCustomAudiences,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudiencesRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateCustomAudiencesResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.CustomAudienceService.Service
end
