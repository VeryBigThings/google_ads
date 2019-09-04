defmodule Google.Ads.Googleads.V2.Services.GetSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.MutateSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V2.Services.SharedSetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }
  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field(:customer_id, 1, type: :string)
  field(:operations, 2, repeated: true, type: Google.Ads.Googleads.V2.Services.SharedSetOperation)
  field(:partial_failure, 3, type: :bool)
  field(:validate_only, 4, type: :bool)
end

defmodule Google.Ads.Googleads.V2.Services.SharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }
  defstruct [:operation, :update_mask]

  oneof(:operation, 0)
  field(:update_mask, 4, type: Google.Protobuf.FieldMask)
  field(:create, 1, type: Google.Ads.Googleads.V2.Resources.SharedSet, oneof: 0)
  field(:update, 2, type: Google.Ads.Googleads.V2.Resources.SharedSet, oneof: 0)
  field(:remove, 3, type: :string, oneof: 0)
end

defmodule Google.Ads.Googleads.V2.Services.MutateSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V2.Services.MutateSharedSetResult.t()]
        }
  defstruct [:partial_failure_error, :results]

  field(:partial_failure_error, 3, type: Google.Rpc.Status)
  field(:results, 2, repeated: true, type: Google.Ads.Googleads.V2.Services.MutateSharedSetResult)
end

defmodule Google.Ads.Googleads.V2.Services.MutateSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.SharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.SharedSetService"

  rpc(
    :GetSharedSet,
    Google.Ads.Googleads.V2.Services.GetSharedSetRequest,
    Google.Ads.Googleads.V2.Resources.SharedSet
  )

  rpc(
    :MutateSharedSets,
    Google.Ads.Googleads.V2.Services.MutateSharedSetsRequest,
    Google.Ads.Googleads.V2.Services.MutateSharedSetsResponse
  )
end

defmodule Google.Ads.Googleads.V2.Services.SharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.SharedSetService.Service
end
