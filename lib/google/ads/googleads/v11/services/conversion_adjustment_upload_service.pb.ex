defmodule Google.Ads.Googleads.V11.Services.UploadConversionAdjustmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversion_adjustments: [Google.Ads.Googleads.V11.Services.ConversionAdjustment.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct customer_id: "",
            conversion_adjustments: [],
            partial_failure: false,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :conversion_adjustments, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ConversionAdjustment,
    json_name: "conversionAdjustments",
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V11.Services.UploadConversionAdjustmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V11.Services.ConversionAdjustmentResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ConversionAdjustmentResult
end
defmodule Google.Ads.Googleads.V11.Services.ConversionAdjustment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid_date_time_pair: Google.Ads.Googleads.V11.Services.GclidDateTimePair.t() | nil,
          order_id: String.t(),
          conversion_action: String.t(),
          adjustment_date_time: String.t(),
          adjustment_type:
            Google.Ads.Googleads.V11.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType.t(),
          restatement_value: Google.Ads.Googleads.V11.Services.RestatementValue.t() | nil,
          user_identifiers: [Google.Ads.Googleads.V11.Common.UserIdentifier.t()],
          user_agent: String.t()
        }

  defstruct gclid_date_time_pair: nil,
            order_id: "",
            conversion_action: "",
            adjustment_date_time: "",
            adjustment_type: :UNSPECIFIED,
            restatement_value: nil,
            user_identifiers: [],
            user_agent: ""

  field :gclid_date_time_pair, 12,
    type: Google.Ads.Googleads.V11.Services.GclidDateTimePair,
    json_name: "gclidDateTimePair"

  field :order_id, 13, type: :string, json_name: "orderId"
  field :conversion_action, 8, type: :string, json_name: "conversionAction"
  field :adjustment_date_time, 9, type: :string, json_name: "adjustmentDateTime"

  field :adjustment_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    json_name: "adjustmentType",
    enum: true

  field :restatement_value, 6,
    type: Google.Ads.Googleads.V11.Services.RestatementValue,
    json_name: "restatementValue"

  field :user_identifiers, 10,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserIdentifier,
    json_name: "userIdentifiers"

  field :user_agent, 11, type: :string, json_name: "userAgent"
end
defmodule Google.Ads.Googleads.V11.Services.RestatementValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          adjusted_value: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t()
        }

  defstruct adjusted_value: 0.0,
            currency_code: ""

  field :adjusted_value, 3, type: :double, json_name: "adjustedValue"
  field :currency_code, 4, type: :string, json_name: "currencyCode"
end
defmodule Google.Ads.Googleads.V11.Services.GclidDateTimePair do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: String.t(),
          conversion_date_time: String.t()
        }

  defstruct gclid: "",
            conversion_date_time: ""

  field :gclid, 3, type: :string
  field :conversion_date_time, 4, type: :string, json_name: "conversionDateTime"
end
defmodule Google.Ads.Googleads.V11.Services.ConversionAdjustmentResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid_date_time_pair: Google.Ads.Googleads.V11.Services.GclidDateTimePair.t() | nil,
          order_id: String.t(),
          conversion_action: String.t(),
          adjustment_date_time: String.t(),
          adjustment_type:
            Google.Ads.Googleads.V11.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType.t()
        }

  defstruct gclid_date_time_pair: nil,
            order_id: "",
            conversion_action: "",
            adjustment_date_time: "",
            adjustment_type: :UNSPECIFIED

  field :gclid_date_time_pair, 9,
    type: Google.Ads.Googleads.V11.Services.GclidDateTimePair,
    json_name: "gclidDateTimePair"

  field :order_id, 10, type: :string, json_name: "orderId"
  field :conversion_action, 7, type: :string, json_name: "conversionAction"
  field :adjustment_date_time, 8, type: :string, json_name: "adjustmentDateTime"

  field :adjustment_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    json_name: "adjustmentType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Services.ConversionAdjustmentUploadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.ConversionAdjustmentUploadService"

  rpc :UploadConversionAdjustments,
      Google.Ads.Googleads.V11.Services.UploadConversionAdjustmentsRequest,
      Google.Ads.Googleads.V11.Services.UploadConversionAdjustmentsResponse
end

defmodule Google.Ads.Googleads.V11.Services.ConversionAdjustmentUploadService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V11.Services.ConversionAdjustmentUploadService.Service
end
