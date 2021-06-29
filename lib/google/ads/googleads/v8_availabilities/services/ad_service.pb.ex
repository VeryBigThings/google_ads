defmodule Google.Ads.Googleads.V8Availabilities.Services.GetAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8Availabilities.Services.AdOperation.t()],
          partial_failure: boolean,
          response_content_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType.t(),
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :response_content_type, :validate_only]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.AdOperation
  field :partial_failure, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true

  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          policy_validation_parameter:
            Google.Ads.Googleads.V8Availabilities.Common.PolicyValidationParameter.t() | nil
        }

  defstruct [:operation, :update_mask, :policy_validation_parameter]

  oneof :operation, 0

  field :update_mask, 2, type: Google.Protobuf.FieldMask

  field :policy_validation_parameter, 3,
    type: Google.Ads.Googleads.V8Availabilities.Common.PolicyValidationParameter

  field :update, 1, type: Google.Ads.Googleads.V8Availabilities.Resources.Ad, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8Availabilities.Services.MutateAdResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.MutateAdResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.MutateAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad: Google.Ads.Googleads.V8Availabilities.Resources.Ad.t() | nil
        }

  defstruct [:resource_name, :ad]

  field :resource_name, 1, type: :string
  field :ad, 2, type: Google.Ads.Googleads.V8Availabilities.Resources.Ad
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.AdService"

  rpc :GetAd, Google.Ads.Googleads.V8Availabilities.Services.GetAdRequest, Google.Ads.Googleads.V8Availabilities.Resources.Ad

  rpc :MutateAds,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.MutateAdsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.AdService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.AdService.Service
end
