defmodule Google.Ads.Googleads.V11.Services.MutateBiddingSeasonalityAdjustmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [
            Google.Ads.Googleads.V11.Services.BiddingSeasonalityAdjustmentOperation.t()
          ],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.BiddingSeasonalityAdjustmentOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Services.BiddingSeasonalityAdjustmentOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V11.Resources.BiddingSeasonalityAdjustment.t() | nil}
            | {:update, Google.Ads.Googleads.V11.Resources.BiddingSeasonalityAdjustment.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :create, 1,
    type: Google.Ads.Googleads.V11.Resources.BiddingSeasonalityAdjustment,
    oneof: 0

  field :update, 2,
    type: Google.Ads.Googleads.V11.Resources.BiddingSeasonalityAdjustment,
    oneof: 0

  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.MutateBiddingSeasonalityAdjustmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [
            Google.Ads.Googleads.V11.Services.MutateBiddingSeasonalityAdjustmentsResult.t()
          ]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.MutateBiddingSeasonalityAdjustmentsResult
end
defmodule Google.Ads.Googleads.V11.Services.MutateBiddingSeasonalityAdjustmentsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          bidding_seasonality_adjustment:
            Google.Ads.Googleads.V11.Resources.BiddingSeasonalityAdjustment.t() | nil
        }

  defstruct resource_name: "",
            bidding_seasonality_adjustment: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :bidding_seasonality_adjustment, 2,
    type: Google.Ads.Googleads.V11.Resources.BiddingSeasonalityAdjustment,
    json_name: "biddingSeasonalityAdjustment"
end
defmodule Google.Ads.Googleads.V11.Services.BiddingSeasonalityAdjustmentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.BiddingSeasonalityAdjustmentService"

  rpc :MutateBiddingSeasonalityAdjustments,
      Google.Ads.Googleads.V11.Services.MutateBiddingSeasonalityAdjustmentsRequest,
      Google.Ads.Googleads.V11.Services.MutateBiddingSeasonalityAdjustmentsResponse
end

defmodule Google.Ads.Googleads.V11.Services.BiddingSeasonalityAdjustmentService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V11.Services.BiddingSeasonalityAdjustmentService.Service
end