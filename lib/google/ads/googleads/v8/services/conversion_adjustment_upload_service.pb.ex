defmodule Google.Ads.Googleads.V8.Services.UploadConversionAdjustmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :conversion_adjustments, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ConversionAdjustment

  field :partial_failure, 3, required: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.UploadConversionAdjustmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 1, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ConversionAdjustmentResult
end

defmodule Google.Ads.Googleads.V8.Services.ConversionAdjustment do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :conversion_identifier, 0
  field :conversion_action, 8, optional: true, type: :string
  field :adjustment_date_time, 9, optional: true, type: :string

  field :adjustment_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    enum: true

  field :restatement_value, 6,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.RestatementValue

  field :gclid_date_time_pair, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.GclidDateTimePair,
    oneof: 0

  field :order_id, 7, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.RestatementValue do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :adjusted_value, 3, optional: true, type: :double
  field :currency_code, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GclidDateTimePair do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :gclid, 3, optional: true, type: :string
  field :conversion_date_time, 4, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ConversionAdjustmentResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :conversion_identifier, 0
  field :conversion_action, 7, optional: true, type: :string
  field :adjustment_date_time, 8, optional: true, type: :string

  field :adjustment_type, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    enum: true

  field :gclid_date_time_pair, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.GclidDateTimePair,
    oneof: 0

  field :order_id, 6, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.ConversionAdjustmentUploadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ConversionAdjustmentUploadService"

  rpc :UploadConversionAdjustments,
      Google.Ads.Googleads.V8.Services.UploadConversionAdjustmentsRequest,
      Google.Ads.Googleads.V8.Services.UploadConversionAdjustmentsResponse
end

defmodule Google.Ads.Googleads.V8.Services.ConversionAdjustmentUploadService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.ConversionAdjustmentUploadService.Service
end
