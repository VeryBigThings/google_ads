defmodule Google.Ads.Googleads.V8.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_locations: [Google.Ads.Googleads.V8.Services.PlannableLocation.t()]
        }

  defstruct [:plannable_locations]

  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.PlannableLocation
end

defmodule Google.Ads.Googleads.V8.Services.PlannableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          parent_country_id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:id, :name, :parent_country_id]

  field :id, 4, type: Google.Protobuf.StringValue
  field :name, 5, type: Google.Protobuf.StringValue
  field :parent_country_id, 6, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Services.ListPlannableProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: String.t()
        }

  defstruct [:plannable_location_id]

  field :plannable_location_id, 2, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_metadata: [Google.Ads.Googleads.V8.Services.ProductMetadata.t()]
        }

  defstruct [:product_metadata]

  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ProductMetadata
end

defmodule Google.Ads.Googleads.V8.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: Google.Protobuf.StringValue.t() | nil,
          plannable_product_name: String.t(),
          plannable_targeting: Google.Ads.Googleads.V8.Services.PlannableTargeting.t() | nil
        }

  defstruct [:plannable_product_code, :plannable_product_name, :plannable_targeting]

  field :plannable_product_code, 4, type: Google.Protobuf.StringValue
  field :plannable_product_name, 3, type: :string
  field :plannable_targeting, 2, type: Google.Ads.Googleads.V8.Services.PlannableTargeting
end

defmodule Google.Ads.Googleads.V8.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          age_ranges: [
            [Google.Ads.Googleads.V8.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t()]
          ],
          genders: [Google.Ads.Googleads.V8.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V8.Common.DeviceInfo.t()],
          networks: [[Google.Ads.Googleads.V8.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()]]
        }

  defstruct [:age_ranges, :genders, :devices, :networks]

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 2, repeated: true, type: Google.Ads.Googleads.V8.Common.GenderInfo
  field :devices, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.DeviceInfo

  field :networks, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.GenerateProductMixIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          plannable_location_id: String.t(),
          currency_code: String.t(),
          budget_micros: integer,
          preferences: Google.Ads.Googleads.V8.Services.Preferences.t() | nil
        }

  defstruct [:customer_id, :plannable_location_id, :currency_code, :budget_micros, :preferences]

  field :customer_id, 1, type: :string
  field :plannable_location_id, 6, type: :string
  field :currency_code, 7, type: :string
  field :budget_micros, 8, type: :int64
  field :preferences, 5, type: Google.Ads.Googleads.V8.Services.Preferences
end

defmodule Google.Ads.Googleads.V8.Services.Preferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_skippable: Google.Protobuf.BoolValue.t() | nil,
          starts_with_sound: Google.Protobuf.BoolValue.t() | nil,
          ad_length: Google.Ads.Googleads.V8.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength.t(),
          top_content_only: Google.Protobuf.BoolValue.t() | nil,
          has_guaranteed_price: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :is_skippable,
    :starts_with_sound,
    :ad_length,
    :top_content_only,
    :has_guaranteed_price
  ]

  field :is_skippable, 6, type: Google.Protobuf.BoolValue
  field :starts_with_sound, 7, type: Google.Protobuf.BoolValue

  field :ad_length, 3,
    type: Google.Ads.Googleads.V8.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength,
    enum: true

  field :top_content_only, 8, type: Google.Protobuf.BoolValue
  field :has_guaranteed_price, 9, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V8.Services.GenerateProductMixIdeasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_allocation: [Google.Ads.Googleads.V8.Services.ProductAllocation.t()]
        }

  defstruct [:product_allocation]

  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ProductAllocation
end

defmodule Google.Ads.Googleads.V8.Services.ProductAllocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: Google.Protobuf.StringValue.t() | nil,
          budget_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:plannable_product_code, :budget_micros]

  field :plannable_product_code, 3, type: Google.Protobuf.StringValue
  field :budget_micros, 4, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          currency_code: Google.Protobuf.StringValue.t() | nil,
          campaign_duration: Google.Ads.Googleads.V8.Services.CampaignDuration.t() | nil,
          cookie_frequency_cap: Google.Protobuf.Int32Value.t() | nil,
          cookie_frequency_cap_setting: Google.Ads.Googleads.V8.Services.FrequencyCap.t() | nil,
          min_effective_frequency: Google.Protobuf.Int32Value.t() | nil,
          targeting: Google.Ads.Googleads.V8.Services.Targeting.t() | nil,
          planned_products: [Google.Ads.Googleads.V8.Services.PlannedProduct.t()]
        }

  defstruct [
    :customer_id,
    :currency_code,
    :campaign_duration,
    :cookie_frequency_cap,
    :cookie_frequency_cap_setting,
    :min_effective_frequency,
    :targeting,
    :planned_products
  ]

  field :customer_id, 1, type: :string
  field :currency_code, 9, type: Google.Protobuf.StringValue
  field :campaign_duration, 3, type: Google.Ads.Googleads.V8.Services.CampaignDuration
  field :cookie_frequency_cap, 10, type: Google.Protobuf.Int32Value
  field :cookie_frequency_cap_setting, 8, type: Google.Ads.Googleads.V8.Services.FrequencyCap
  field :min_effective_frequency, 11, type: Google.Protobuf.Int32Value
  field :targeting, 6, type: Google.Ads.Googleads.V8.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.PlannedProduct
end

defmodule Google.Ads.Googleads.V8.Services.FrequencyCap do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: integer,
          time_unit:
            Google.Ads.Googleads.V8.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit.t()
        }

  defstruct [:impressions, :time_unit]

  field :impressions, 3, type: :int32

  field :time_unit, 2,
    type: Google.Ads.Googleads.V8.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.Targeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: Google.Protobuf.StringValue.t() | nil,
          age_range: Google.Ads.Googleads.V8.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t(),
          genders: [Google.Ads.Googleads.V8.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V8.Common.DeviceInfo.t()],
          network: Google.Ads.Googleads.V8.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()
        }

  defstruct [:plannable_location_id, :age_range, :genders, :devices, :network]

  field :plannable_location_id, 6, type: Google.Protobuf.StringValue

  field :age_range, 2,
    type: Google.Ads.Googleads.V8.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.DeviceInfo

  field :network, 5,
    type: Google.Ads.Googleads.V8.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CampaignDuration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration_in_days: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:duration_in_days]

  field :duration_in_days, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V8.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: Google.Protobuf.StringValue.t() | nil,
          budget_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:plannable_product_code, :budget_micros]

  field :plannable_product_code, 3, type: Google.Protobuf.StringValue
  field :budget_micros, 4, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_audience_metrics:
            Google.Ads.Googleads.V8.Services.OnTargetAudienceMetrics.t() | nil,
          reach_curve: Google.Ads.Googleads.V8.Services.ReachCurve.t() | nil
        }

  defstruct [:on_target_audience_metrics, :reach_curve]

  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V8.Services.OnTargetAudienceMetrics

  field :reach_curve, 2, type: Google.Ads.Googleads.V8.Services.ReachCurve
end

defmodule Google.Ads.Googleads.V8.Services.ReachCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reach_forecasts: [Google.Ads.Googleads.V8.Services.ReachForecast.t()]
        }

  defstruct [:reach_forecasts]

  field :reach_forecasts, 1, repeated: true, type: Google.Ads.Googleads.V8.Services.ReachForecast
end

defmodule Google.Ads.Googleads.V8.Services.ReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_micros: integer,
          forecast: Google.Ads.Googleads.V8.Services.Forecast.t() | nil,
          planned_product_reach_forecasts: [
            Google.Ads.Googleads.V8.Services.PlannedProductReachForecast.t()
          ]
        }

  defstruct [:cost_micros, :forecast, :planned_product_reach_forecasts]

  field :cost_micros, 5, type: :int64
  field :forecast, 2, type: Google.Ads.Googleads.V8.Services.Forecast

  field :planned_product_reach_forecasts, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.PlannedProductReachForecast
end

defmodule Google.Ads.Googleads.V8.Services.Forecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: Google.Protobuf.Int64Value.t() | nil,
          total_reach: Google.Protobuf.Int64Value.t() | nil,
          on_target_impressions: Google.Protobuf.Int64Value.t() | nil,
          total_impressions: Google.Protobuf.Int64Value.t() | nil,
          viewable_impressions: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :on_target_reach,
    :total_reach,
    :on_target_impressions,
    :total_impressions,
    :viewable_impressions
  ]

  field :on_target_reach, 5, type: Google.Protobuf.Int64Value
  field :total_reach, 6, type: Google.Protobuf.Int64Value
  field :on_target_impressions, 7, type: Google.Protobuf.Int64Value
  field :total_impressions, 8, type: Google.Protobuf.Int64Value
  field :viewable_impressions, 9, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Services.PlannedProductReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          cost_micros: integer,
          planned_product_forecast:
            Google.Ads.Googleads.V8.Services.PlannedProductForecast.t() | nil
        }

  defstruct [:plannable_product_code, :cost_micros, :planned_product_forecast]

  field :plannable_product_code, 1, type: :string
  field :cost_micros, 2, type: :int64

  field :planned_product_forecast, 3,
    type: Google.Ads.Googleads.V8.Services.PlannedProductForecast
end

defmodule Google.Ads.Googleads.V8.Services.PlannedProductForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: integer,
          total_reach: integer,
          on_target_impressions: integer,
          total_impressions: integer,
          viewable_impressions: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :on_target_reach,
    :total_reach,
    :on_target_impressions,
    :total_impressions,
    :viewable_impressions
  ]

  field :on_target_reach, 1, type: :int64
  field :total_reach, 2, type: :int64
  field :on_target_impressions, 3, type: :int64
  field :total_impressions, 4, type: :int64
  field :viewable_impressions, 5, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Services.OnTargetAudienceMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          youtube_audience_size: Google.Protobuf.Int64Value.t() | nil,
          census_audience_size: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:youtube_audience_size, :census_audience_size]

  field :youtube_audience_size, 3, type: Google.Protobuf.Int64Value
  field :census_audience_size, 4, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V8.Services.ReachPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ReachPlanService"

  rpc :ListPlannableLocations,
      Google.Ads.Googleads.V8.Services.ListPlannableLocationsRequest,
      Google.Ads.Googleads.V8.Services.ListPlannableLocationsResponse

  rpc :ListPlannableProducts,
      Google.Ads.Googleads.V8.Services.ListPlannableProductsRequest,
      Google.Ads.Googleads.V8.Services.ListPlannableProductsResponse

  rpc :GenerateProductMixIdeas,
      Google.Ads.Googleads.V8.Services.GenerateProductMixIdeasRequest,
      Google.Ads.Googleads.V8.Services.GenerateProductMixIdeasResponse

  rpc :GenerateReachForecast,
      Google.Ads.Googleads.V8.Services.GenerateReachForecastRequest,
      Google.Ads.Googleads.V8.Services.GenerateReachForecastResponse
end

defmodule Google.Ads.Googleads.V8.Services.ReachPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ReachPlanService.Service
end
