defmodule Google.Ads.Googleads.V8.Services.UploadClickConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversions: [Google.Ads.Googleads.V8.Services.ClickConversion.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :conversions, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string
  field :conversions, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.ClickConversion
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.UploadClickConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.ClickConversionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.ClickConversionResult
end

defmodule Google.Ads.Googleads.V8.Services.UploadCallConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversions: [Google.Ads.Googleads.V8.Services.CallConversion.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :conversions, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string
  field :conversions, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.CallConversion
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.UploadCallConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.CallConversionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.CallConversionResult
end

defmodule Google.Ads.Googleads.V8.Services.ClickConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: String.t(),
          conversion_action: String.t(),
          conversion_date_time: String.t(),
          conversion_value: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t(),
          order_id: String.t(),
          external_attribution_data:
            Google.Ads.Googleads.V8.Services.ExternalAttributionData.t() | nil,
          custom_variables: [Google.Ads.Googleads.V8.Services.CustomVariable.t()],
          cart_data: Google.Ads.Googleads.V8.Services.CartData.t() | nil
        }

  defstruct [
    :gclid,
    :conversion_action,
    :conversion_date_time,
    :conversion_value,
    :currency_code,
    :order_id,
    :external_attribution_data,
    :custom_variables,
    :cart_data
  ]

  field :gclid, 9, type: :string
  field :conversion_action, 10, type: :string
  field :conversion_date_time, 11, type: :string
  field :conversion_value, 12, type: :double
  field :currency_code, 13, type: :string
  field :order_id, 14, type: :string

  field :external_attribution_data, 7,
    type: Google.Ads.Googleads.V8.Services.ExternalAttributionData

  field :custom_variables, 15,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CustomVariable

  field :cart_data, 16, type: Google.Ads.Googleads.V8.Services.CartData
end

defmodule Google.Ads.Googleads.V8.Services.CallConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          caller_id: String.t(),
          call_start_date_time: String.t(),
          conversion_action: String.t(),
          conversion_date_time: String.t(),
          conversion_value: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t(),
          custom_variables: [Google.Ads.Googleads.V8.Services.CustomVariable.t()]
        }

  defstruct [
    :caller_id,
    :call_start_date_time,
    :conversion_action,
    :conversion_date_time,
    :conversion_value,
    :currency_code,
    :custom_variables
  ]

  field :caller_id, 7, type: :string
  field :call_start_date_time, 8, type: :string
  field :conversion_action, 9, type: :string
  field :conversion_date_time, 10, type: :string
  field :conversion_value, 11, type: :double
  field :currency_code, 12, type: :string

  field :custom_variables, 13,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CustomVariable
end

defmodule Google.Ads.Googleads.V8.Services.ExternalAttributionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          external_attribution_credit: float | :infinity | :negative_infinity | :nan,
          external_attribution_model: String.t()
        }

  defstruct [:external_attribution_credit, :external_attribution_model]

  field :external_attribution_credit, 3, type: :double
  field :external_attribution_model, 4, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ClickConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: String.t(),
          conversion_action: String.t(),
          conversion_date_time: String.t()
        }

  defstruct [:gclid, :conversion_action, :conversion_date_time]

  field :gclid, 4, type: :string
  field :conversion_action, 5, type: :string
  field :conversion_date_time, 6, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CallConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          caller_id: String.t(),
          call_start_date_time: String.t(),
          conversion_action: String.t(),
          conversion_date_time: String.t()
        }

  defstruct [:caller_id, :call_start_date_time, :conversion_action, :conversion_date_time]

  field :caller_id, 5, type: :string
  field :call_start_date_time, 6, type: :string
  field :conversion_action, 7, type: :string
  field :conversion_date_time, 8, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CustomVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_custom_variable: String.t(),
          value: String.t()
        }

  defstruct [:conversion_custom_variable, :value]

  field :conversion_custom_variable, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CartData.Item do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_id: String.t(),
          quantity: integer,
          unit_price: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:product_id, :quantity, :unit_price]

  field :product_id, 1, type: :string
  field :quantity, 2, type: :int32
  field :unit_price, 3, type: :double
end

defmodule Google.Ads.Googleads.V8.Services.CartData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          merchant_id: String.t(),
          feed_country_code: String.t(),
          feed_language_code: String.t(),
          local_transaction_cost: float | :infinity | :negative_infinity | :nan,
          items: [Google.Ads.Googleads.V8.Services.CartData.Item.t()]
        }

  defstruct [
    :merchant_id,
    :feed_country_code,
    :feed_language_code,
    :local_transaction_cost,
    :items
  ]

  field :merchant_id, 1, type: :string
  field :feed_country_code, 2, type: :string
  field :feed_language_code, 3, type: :string
  field :local_transaction_cost, 4, type: :double
  field :items, 5, repeated: true, type: Google.Ads.Googleads.V8.Services.CartData.Item
end

defmodule Google.Ads.Googleads.V8.Services.ConversionUploadService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ConversionUploadService"

  rpc :UploadClickConversions,
      Google.Ads.Googleads.V8.Services.UploadClickConversionsRequest,
      Google.Ads.Googleads.V8.Services.UploadClickConversionsResponse

  rpc :UploadCallConversions,
      Google.Ads.Googleads.V8.Services.UploadCallConversionsRequest,
      Google.Ads.Googleads.V8.Services.UploadCallConversionsResponse
end

defmodule Google.Ads.Googleads.V8.Services.ConversionUploadService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ConversionUploadService.Service
end
