defmodule Google.Ads.Googleads.V4.Services.UploadClickConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :conversions, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.ClickConversion
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.UploadClickConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.ClickConversionResult
end

defmodule Google.Ads.Googleads.V4.Services.UploadCallConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :conversions, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.CallConversion
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.UploadCallConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.CallConversionResult
end

defmodule Google.Ads.Googleads.V4.Services.ClickConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :gclid, 1, type: Google.Protobuf.StringValue
  field :conversion_action, 2, type: Google.Protobuf.StringValue
  field :conversion_date_time, 3, type: Google.Protobuf.StringValue
  field :conversion_value, 4, type: Google.Protobuf.DoubleValue
  field :currency_code, 5, type: Google.Protobuf.StringValue
  field :order_id, 6, type: Google.Protobuf.StringValue

  field :external_attribution_data, 7,
    type: Google.Ads.Googleads.V4.Services.ExternalAttributionData
end

defmodule Google.Ads.Googleads.V4.Services.CallConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :caller_id, 1, type: Google.Protobuf.StringValue
  field :call_start_date_time, 2, type: Google.Protobuf.StringValue
  field :conversion_action, 3, type: Google.Protobuf.StringValue
  field :conversion_date_time, 4, type: Google.Protobuf.StringValue
  field :conversion_value, 5, type: Google.Protobuf.DoubleValue
  field :currency_code, 6, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.ExternalAttributionData do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :external_attribution_credit, 1, type: Google.Protobuf.DoubleValue
  field :external_attribution_model, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.ClickConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :gclid, 1, type: Google.Protobuf.StringValue
  field :conversion_action, 2, type: Google.Protobuf.StringValue
  field :conversion_date_time, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.CallConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :caller_id, 1, type: Google.Protobuf.StringValue
  field :call_start_date_time, 2, type: Google.Protobuf.StringValue
  field :conversion_action, 3, type: Google.Protobuf.StringValue
  field :conversion_date_time, 4, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.ConversionUploadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.ConversionUploadService"

  rpc :UploadClickConversions,
      Google.Ads.Googleads.V4.Services.UploadClickConversionsRequest,
      Google.Ads.Googleads.V4.Services.UploadClickConversionsResponse

  rpc :UploadCallConversions,
      Google.Ads.Googleads.V4.Services.UploadCallConversionsRequest,
      Google.Ads.Googleads.V4.Services.UploadCallConversionsResponse
end

defmodule Google.Ads.Googleads.V4.Services.ConversionUploadService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.ConversionUploadService.Service
end
