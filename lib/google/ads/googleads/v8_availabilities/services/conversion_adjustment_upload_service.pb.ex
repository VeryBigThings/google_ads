defmodule Google.Ads.Googleads.V8Availabilities.Services.UploadConversionAdjustmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversion_adjustments: [Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustment.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :conversion_adjustments, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :conversion_adjustments, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustment

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.UploadConversionAdjustmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustmentResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustmentResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_identifier: {atom, any},
          conversion_action: String.t(),
          adjustment_date_time: String.t(),
          adjustment_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType.t(),
          restatement_value: Google.Ads.Googleads.V8Availabilities.Services.RestatementValue.t() | nil
        }

  defstruct [
    :conversion_identifier,
    :conversion_action,
    :adjustment_date_time,
    :adjustment_type,
    :restatement_value
  ]

  oneof :conversion_identifier, 0

  field :conversion_action, 8, type: :string
  field :adjustment_date_time, 9, type: :string

  field :adjustment_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    enum: true

  field :restatement_value, 6, type: Google.Ads.Googleads.V8Availabilities.Services.RestatementValue

  field :gclid_date_time_pair, 1,
    type: Google.Ads.Googleads.V8Availabilities.Services.GclidDateTimePair,
    oneof: 0

  field :order_id, 7, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.RestatementValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          adjusted_value: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t()
        }

  defstruct [:adjusted_value, :currency_code]

  field :adjusted_value, 3, type: :double
  field :currency_code, 4, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GclidDateTimePair do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: String.t(),
          conversion_date_time: String.t()
        }

  defstruct [:gclid, :conversion_date_time]

  field :gclid, 3, type: :string
  field :conversion_date_time, 4, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustmentResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_identifier: {atom, any},
          conversion_action: String.t(),
          adjustment_date_time: String.t(),
          adjustment_type:
            Google.Ads.Googleads.V8Availabilities.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType.t()
        }

  defstruct [:conversion_identifier, :conversion_action, :adjustment_date_time, :adjustment_type]

  oneof :conversion_identifier, 0

  field :conversion_action, 7, type: :string
  field :adjustment_date_time, 8, type: :string

  field :adjustment_type, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    enum: true

  field :gclid_date_time_pair, 1,
    type: Google.Ads.Googleads.V8Availabilities.Services.GclidDateTimePair,
    oneof: 0

  field :order_id, 6, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustmentUploadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.ConversionAdjustmentUploadService"

  rpc :UploadConversionAdjustments,
      Google.Ads.Googleads.V8Availabilities.Services.UploadConversionAdjustmentsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.UploadConversionAdjustmentsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustmentUploadService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8Availabilities.Services.ConversionAdjustmentUploadService.Service
end
