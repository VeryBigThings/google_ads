defmodule Google.Ads.Googleads.V11.Services.UploadClickConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversions: [Google.Ads.Googleads.V11.Services.ClickConversion.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct customer_id: "",
            conversions: [],
            partial_failure: false,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :conversions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ClickConversion,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V11.Services.UploadClickConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V11.Services.ClickConversionResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V11.Services.ClickConversionResult
end
defmodule Google.Ads.Googleads.V11.Services.UploadCallConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversions: [Google.Ads.Googleads.V11.Services.CallConversion.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct customer_id: "",
            conversions: [],
            partial_failure: false,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :conversions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.CallConversion,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V11.Services.UploadCallConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V11.Services.CallConversionResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V11.Services.CallConversionResult
end
defmodule Google.Ads.Googleads.V11.Services.ClickConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: String.t(),
          gbraid: String.t(),
          wbraid: String.t(),
          conversion_action: String.t(),
          conversion_date_time: String.t(),
          conversion_value: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t(),
          order_id: String.t(),
          external_attribution_data:
            Google.Ads.Googleads.V11.Services.ExternalAttributionData.t() | nil,
          custom_variables: [Google.Ads.Googleads.V11.Services.CustomVariable.t()],
          cart_data: Google.Ads.Googleads.V11.Services.CartData.t() | nil,
          user_identifiers: [Google.Ads.Googleads.V11.Common.UserIdentifier.t()],
          conversion_environment:
            Google.Ads.Googleads.V11.Enums.ConversionEnvironmentEnum.ConversionEnvironment.t()
        }

  defstruct gclid: "",
            gbraid: "",
            wbraid: "",
            conversion_action: "",
            conversion_date_time: "",
            conversion_value: 0.0,
            currency_code: "",
            order_id: "",
            external_attribution_data: nil,
            custom_variables: [],
            cart_data: nil,
            user_identifiers: [],
            conversion_environment: :UNSPECIFIED

  field :gclid, 9, type: :string
  field :gbraid, 18, type: :string
  field :wbraid, 19, type: :string
  field :conversion_action, 10, type: :string, json_name: "conversionAction"
  field :conversion_date_time, 11, type: :string, json_name: "conversionDateTime"
  field :conversion_value, 12, type: :double, json_name: "conversionValue"
  field :currency_code, 13, type: :string, json_name: "currencyCode"
  field :order_id, 14, type: :string, json_name: "orderId"

  field :external_attribution_data, 7,
    type: Google.Ads.Googleads.V11.Services.ExternalAttributionData,
    json_name: "externalAttributionData"

  field :custom_variables, 15,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.CustomVariable,
    json_name: "customVariables"

  field :cart_data, 16, type: Google.Ads.Googleads.V11.Services.CartData, json_name: "cartData"

  field :user_identifiers, 17,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserIdentifier,
    json_name: "userIdentifiers"

  field :conversion_environment, 20,
    type: Google.Ads.Googleads.V11.Enums.ConversionEnvironmentEnum.ConversionEnvironment,
    json_name: "conversionEnvironment",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Services.CallConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          caller_id: String.t(),
          call_start_date_time: String.t(),
          conversion_action: String.t(),
          conversion_date_time: String.t(),
          conversion_value: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t(),
          custom_variables: [Google.Ads.Googleads.V11.Services.CustomVariable.t()]
        }

  defstruct caller_id: "",
            call_start_date_time: "",
            conversion_action: "",
            conversion_date_time: "",
            conversion_value: 0.0,
            currency_code: "",
            custom_variables: []

  field :caller_id, 7, type: :string, json_name: "callerId"
  field :call_start_date_time, 8, type: :string, json_name: "callStartDateTime"
  field :conversion_action, 9, type: :string, json_name: "conversionAction"
  field :conversion_date_time, 10, type: :string, json_name: "conversionDateTime"
  field :conversion_value, 11, type: :double, json_name: "conversionValue"
  field :currency_code, 12, type: :string, json_name: "currencyCode"

  field :custom_variables, 13,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.CustomVariable,
    json_name: "customVariables"
end
defmodule Google.Ads.Googleads.V11.Services.ExternalAttributionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          external_attribution_credit: float | :infinity | :negative_infinity | :nan,
          external_attribution_model: String.t()
        }

  defstruct external_attribution_credit: 0.0,
            external_attribution_model: ""

  field :external_attribution_credit, 3, type: :double, json_name: "externalAttributionCredit"
  field :external_attribution_model, 4, type: :string, json_name: "externalAttributionModel"
end
defmodule Google.Ads.Googleads.V11.Services.ClickConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: String.t(),
          gbraid: String.t(),
          wbraid: String.t(),
          conversion_action: String.t(),
          conversion_date_time: String.t(),
          user_identifiers: [Google.Ads.Googleads.V11.Common.UserIdentifier.t()]
        }

  defstruct gclid: "",
            gbraid: "",
            wbraid: "",
            conversion_action: "",
            conversion_date_time: "",
            user_identifiers: []

  field :gclid, 4, type: :string
  field :gbraid, 8, type: :string
  field :wbraid, 9, type: :string
  field :conversion_action, 5, type: :string, json_name: "conversionAction"
  field :conversion_date_time, 6, type: :string, json_name: "conversionDateTime"

  field :user_identifiers, 7,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserIdentifier,
    json_name: "userIdentifiers"
end
defmodule Google.Ads.Googleads.V11.Services.CallConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          caller_id: String.t(),
          call_start_date_time: String.t(),
          conversion_action: String.t(),
          conversion_date_time: String.t()
        }

  defstruct caller_id: "",
            call_start_date_time: "",
            conversion_action: "",
            conversion_date_time: ""

  field :caller_id, 5, type: :string, json_name: "callerId"
  field :call_start_date_time, 6, type: :string, json_name: "callStartDateTime"
  field :conversion_action, 7, type: :string, json_name: "conversionAction"
  field :conversion_date_time, 8, type: :string, json_name: "conversionDateTime"
end
defmodule Google.Ads.Googleads.V11.Services.CustomVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_custom_variable: String.t(),
          value: String.t()
        }

  defstruct conversion_custom_variable: "",
            value: ""

  field :conversion_custom_variable, 1,
    type: :string,
    json_name: "conversionCustomVariable",
    deprecated: false

  field :value, 2, type: :string
end
defmodule Google.Ads.Googleads.V11.Services.CartData.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_id: String.t(),
          quantity: integer,
          unit_price: float | :infinity | :negative_infinity | :nan
        }

  defstruct product_id: "",
            quantity: 0,
            unit_price: 0.0

  field :product_id, 1, type: :string, json_name: "productId"
  field :quantity, 2, type: :int32
  field :unit_price, 3, type: :double, json_name: "unitPrice"
end
defmodule Google.Ads.Googleads.V11.Services.CartData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_id: integer,
          feed_country_code: String.t(),
          feed_language_code: String.t(),
          local_transaction_cost: float | :infinity | :negative_infinity | :nan,
          items: [Google.Ads.Googleads.V11.Services.CartData.Item.t()]
        }

  defstruct merchant_id: 0,
            feed_country_code: "",
            feed_language_code: "",
            local_transaction_cost: 0.0,
            items: []

  field :merchant_id, 6, type: :int64, json_name: "merchantId"
  field :feed_country_code, 2, type: :string, json_name: "feedCountryCode"
  field :feed_language_code, 3, type: :string, json_name: "feedLanguageCode"
  field :local_transaction_cost, 4, type: :double, json_name: "localTransactionCost"
  field :items, 5, repeated: true, type: Google.Ads.Googleads.V11.Services.CartData.Item
end
defmodule Google.Ads.Googleads.V11.Services.ConversionUploadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.ConversionUploadService"

  rpc :UploadClickConversions,
      Google.Ads.Googleads.V11.Services.UploadClickConversionsRequest,
      Google.Ads.Googleads.V11.Services.UploadClickConversionsResponse

  rpc :UploadCallConversions,
      Google.Ads.Googleads.V11.Services.UploadCallConversionsRequest,
      Google.Ads.Googleads.V11.Services.UploadCallConversionsResponse
end

defmodule Google.Ads.Googleads.V11.Services.ConversionUploadService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.ConversionUploadService.Service
end
