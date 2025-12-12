defmodule Google.Ads.Googleads.V8Availabilities.Services.UploadClickConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :conversions, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.ClickConversion
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.UploadClickConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.ClickConversionResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.UploadCallConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :customer_id, 1, type: :string
  field :conversions, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.CallConversion
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.UploadCallConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :partial_failure_error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.CallConversionResult
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ClickConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :gclid, 9, type: :string
  field :conversion_action, 10, type: :string
  field :conversion_date_time, 11, type: :string
  field :conversion_value, 12, type: :double
  field :currency_code, 13, type: :string
  field :order_id, 14, type: :string

  field :external_attribution_data, 7,
    type: Google.Ads.Googleads.V8Availabilities.Services.ExternalAttributionData

  field :custom_variables, 15,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomVariable

  field :cart_data, 16, type: Google.Ads.Googleads.V8Availabilities.Services.CartData
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CallConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :caller_id, 7, type: :string
  field :call_start_date_time, 8, type: :string
  field :conversion_action, 9, type: :string
  field :conversion_date_time, 10, type: :string
  field :conversion_value, 11, type: :double
  field :currency_code, 12, type: :string

  field :custom_variables, 13,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.CustomVariable
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ExternalAttributionData do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :external_attribution_credit, 3, type: :double
  field :external_attribution_model, 4, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ClickConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :gclid, 4, type: :string
  field :conversion_action, 5, type: :string
  field :conversion_date_time, 6, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CallConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :caller_id, 5, type: :string
  field :call_start_date_time, 6, type: :string
  field :conversion_action, 7, type: :string
  field :conversion_date_time, 8, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CustomVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :conversion_custom_variable, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CartData.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :product_id, 1, type: :string
  field :quantity, 2, type: :int32
  field :unit_price, 3, type: :double
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CartData do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :merchant_id, 1, type: :string
  field :feed_country_code, 2, type: :string
  field :feed_language_code, 3, type: :string
  field :local_transaction_cost, 4, type: :double
  field :items, 5, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.CartData.Item
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionUploadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.ConversionUploadService"

  rpc :UploadClickConversions,
      Google.Ads.Googleads.V8Availabilities.Services.UploadClickConversionsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.UploadClickConversionsResponse

  rpc :UploadCallConversions,
      Google.Ads.Googleads.V8Availabilities.Services.UploadCallConversionsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.UploadCallConversionsResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ConversionUploadService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.ConversionUploadService.Service
end
