defmodule Google.Ads.Googleads.V2.Services.GetAdGroupAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.MutateAdGroupAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V2.Services.AdGroupAdOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }
  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field(:customer_id, 1, type: :string)
  field(:operations, 2, repeated: true, type: Google.Ads.Googleads.V2.Services.AdGroupAdOperation)
  field(:partial_failure, 3, type: :bool)
  field(:validate_only, 4, type: :bool)
end

defmodule Google.Ads.Googleads.V2.Services.AdGroupAdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          policy_validation_parameter:
            Google.Ads.Googleads.V2.Common.PolicyValidationParameter.t() | nil
        }
  defstruct [:operation, :update_mask, :policy_validation_parameter]

  oneof(:operation, 0)
  field(:update_mask, 4, type: Google.Protobuf.FieldMask)

  field(:policy_validation_parameter, 5,
    type: Google.Ads.Googleads.V2.Common.PolicyValidationParameter
  )

  field(:create, 1, type: Google.Ads.Googleads.V2.Resources.AdGroupAd, oneof: 0)
  field(:update, 2, type: Google.Ads.Googleads.V2.Resources.AdGroupAd, oneof: 0)
  field(:remove, 3, type: :string, oneof: 0)
end

defmodule Google.Ads.Googleads.V2.Services.MutateAdGroupAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V2.Services.MutateAdGroupAdResult.t()]
        }
  defstruct [:partial_failure_error, :results]

  field(:partial_failure_error, 3, type: Google.Rpc.Status)
  field(:results, 2, repeated: true, type: Google.Ads.Googleads.V2.Services.MutateAdGroupAdResult)
end

defmodule Google.Ads.Googleads.V2.Services.MutateAdGroupAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }
  defstruct [:resource_name]

  field(:resource_name, 1, type: :string)
end

defmodule Google.Ads.Googleads.V2.Services.AdGroupAdService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v2.services.AdGroupAdService"

  rpc(
    :GetAdGroupAd,
    Google.Ads.Googleads.V2.Services.GetAdGroupAdRequest,
    Google.Ads.Googleads.V2.Resources.AdGroupAd
  )

  rpc(
    :MutateAdGroupAds,
    Google.Ads.Googleads.V2.Services.MutateAdGroupAdsRequest,
    Google.Ads.Googleads.V2.Services.MutateAdGroupAdsResponse
  )
end

defmodule Google.Ads.Googleads.V2.Services.AdGroupAdService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V2.Services.AdGroupAdService.Service
end
