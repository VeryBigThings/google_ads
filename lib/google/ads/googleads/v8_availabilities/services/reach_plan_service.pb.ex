defmodule Google.Ads.Googleads.V8Availabilities.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_locations: [Google.Ads.Googleads.V8Availabilities.Services.PlannableLocation.t()]
        }

  defstruct [:plannable_locations]

  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.PlannableLocation
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          parent_country_id: integer
        }

  defstruct [:id, :name, :parent_country_id]

  field :id, 4, type: :string
  field :name, 5, type: :string
  field :parent_country_id, 6, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListPlannableProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: String.t()
        }

  defstruct [:plannable_location_id]

  field :plannable_location_id, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_metadata: [Google.Ads.Googleads.V8Availabilities.Services.ProductMetadata.t()]
        }

  defstruct [:product_metadata]

  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ProductMetadata
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          plannable_product_name: String.t(),
          plannable_targeting: Google.Ads.Googleads.V8Availabilities.Services.PlannableTargeting.t() | nil
        }

  defstruct [:plannable_product_code, :plannable_product_name, :plannable_targeting]

  field :plannable_product_code, 4, type: :string
  field :plannable_product_name, 3, type: :string
  field :plannable_targeting, 2, type: Google.Ads.Googleads.V8Availabilities.Services.PlannableTargeting
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          age_ranges: [
            [Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t()]
          ],
          genders: [Google.Ads.Googleads.V8Availabilities.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V8Availabilities.Common.DeviceInfo.t()],
          networks: [[Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()]]
        }

  defstruct [:age_ranges, :genders, :devices, :networks]

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 2, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.GenderInfo
  field :devices, 3, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.DeviceInfo

  field :networks, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GenerateProductMixIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          plannable_location_id: String.t(),
          currency_code: String.t(),
          budget_micros: integer,
          preferences: Google.Ads.Googleads.V8Availabilities.Services.Preferences.t() | nil
        }

  defstruct [:customer_id, :plannable_location_id, :currency_code, :budget_micros, :preferences]

  field :customer_id, 1, type: :string
  field :plannable_location_id, 6, type: :string
  field :currency_code, 7, type: :string
  field :budget_micros, 8, type: :int64
  field :preferences, 5, type: Google.Ads.Googleads.V8Availabilities.Services.Preferences
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.Preferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_skippable: boolean,
          starts_with_sound: boolean,
          ad_length: Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength.t(),
          top_content_only: boolean,
          has_guaranteed_price: boolean
        }

  defstruct [
    :is_skippable,
    :starts_with_sound,
    :ad_length,
    :top_content_only,
    :has_guaranteed_price
  ]

  field :is_skippable, 6, type: :bool
  field :starts_with_sound, 7, type: :bool

  field :ad_length, 3,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength,
    enum: true

  field :top_content_only, 8, type: :bool
  field :has_guaranteed_price, 9, type: :bool
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GenerateProductMixIdeasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_allocation: [Google.Ads.Googleads.V8Availabilities.Services.ProductAllocation.t()]
        }

  defstruct [:product_allocation]

  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ProductAllocation
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ProductAllocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          budget_micros: integer
        }

  defstruct [:plannable_product_code, :budget_micros]

  field :plannable_product_code, 3, type: :string
  field :budget_micros, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          currency_code: String.t(),
          campaign_duration: Google.Ads.Googleads.V8Availabilities.Services.CampaignDuration.t() | nil,
          cookie_frequency_cap: integer,
          cookie_frequency_cap_setting: Google.Ads.Googleads.V8Availabilities.Services.FrequencyCap.t() | nil,
          min_effective_frequency: integer,
          targeting: Google.Ads.Googleads.V8Availabilities.Services.Targeting.t() | nil,
          planned_products: [Google.Ads.Googleads.V8Availabilities.Services.PlannedProduct.t()]
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
  field :currency_code, 9, type: :string
  field :campaign_duration, 3, type: Google.Ads.Googleads.V8Availabilities.Services.CampaignDuration
  field :cookie_frequency_cap, 10, type: :int32
  field :cookie_frequency_cap_setting, 8, type: Google.Ads.Googleads.V8Availabilities.Services.FrequencyCap
  field :min_effective_frequency, 11, type: :int32
  field :targeting, 6, type: Google.Ads.Googleads.V8Availabilities.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.PlannedProduct
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.FrequencyCap do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: integer,
          time_unit:
            Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit.t()
        }

  defstruct [:impressions, :time_unit]

  field :impressions, 3, type: :int32

  field :time_unit, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.Targeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: String.t(),
          age_range: Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t(),
          genders: [Google.Ads.Googleads.V8Availabilities.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V8Availabilities.Common.DeviceInfo.t()],
          network: Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()
        }

  defstruct [:plannable_location_id, :age_range, :genders, :devices, :network]

  field :plannable_location_id, 6, type: :string

  field :age_range, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Common.DeviceInfo

  field :network, 5,
    type: Google.Ads.Googleads.V8Availabilities.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.CampaignDuration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration_in_days: integer
        }

  defstruct [:duration_in_days]

  field :duration_in_days, 2, type: :int32
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          budget_micros: integer
        }

  defstruct [:plannable_product_code, :budget_micros]

  field :plannable_product_code, 3, type: :string
  field :budget_micros, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_audience_metrics:
            Google.Ads.Googleads.V8Availabilities.Services.OnTargetAudienceMetrics.t() | nil,
          reach_curve: Google.Ads.Googleads.V8Availabilities.Services.ReachCurve.t() | nil
        }

  defstruct [:on_target_audience_metrics, :reach_curve]

  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V8Availabilities.Services.OnTargetAudienceMetrics

  field :reach_curve, 2, type: Google.Ads.Googleads.V8Availabilities.Services.ReachCurve
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ReachCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reach_forecasts: [Google.Ads.Googleads.V8Availabilities.Services.ReachForecast.t()]
        }

  defstruct [:reach_forecasts]

  field :reach_forecasts, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.ReachForecast
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_micros: integer,
          forecast: Google.Ads.Googleads.V8Availabilities.Services.Forecast.t() | nil,
          planned_product_reach_forecasts: [
            Google.Ads.Googleads.V8Availabilities.Services.PlannedProductReachForecast.t()
          ]
        }

  defstruct [:cost_micros, :forecast, :planned_product_reach_forecasts]

  field :cost_micros, 5, type: :int64
  field :forecast, 2, type: Google.Ads.Googleads.V8Availabilities.Services.Forecast

  field :planned_product_reach_forecasts, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.PlannedProductReachForecast
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.Forecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: integer,
          total_reach: integer,
          on_target_impressions: integer,
          total_impressions: integer,
          viewable_impressions: integer
        }

  defstruct [
    :on_target_reach,
    :total_reach,
    :on_target_impressions,
    :total_impressions,
    :viewable_impressions
  ]

  field :on_target_reach, 5, type: :int64
  field :total_reach, 6, type: :int64
  field :on_target_impressions, 7, type: :int64
  field :total_impressions, 8, type: :int64
  field :viewable_impressions, 9, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannedProductReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          cost_micros: integer,
          planned_product_forecast:
            Google.Ads.Googleads.V8Availabilities.Services.PlannedProductForecast.t() | nil
        }

  defstruct [:plannable_product_code, :cost_micros, :planned_product_forecast]

  field :plannable_product_code, 1, type: :string
  field :cost_micros, 2, type: :int64

  field :planned_product_forecast, 3,
    type: Google.Ads.Googleads.V8Availabilities.Services.PlannedProductForecast
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannedProductForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: integer,
          total_reach: integer,
          on_target_impressions: integer,
          total_impressions: integer,
          viewable_impressions: integer
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
  field :viewable_impressions, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.OnTargetAudienceMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          youtube_audience_size: integer,
          census_audience_size: integer
        }

  defstruct [:youtube_audience_size, :census_audience_size]

  field :youtube_audience_size, 3, type: :int64
  field :census_audience_size, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ReachPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.V8Availabilities.services.ReachPlanService"

  rpc :ListPlannableLocations,
      Google.Ads.Googleads.V8Availabilities.Services.ListPlannableLocationsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.ListPlannableLocationsResponse

  rpc :ListPlannableProducts,
      Google.Ads.Googleads.V8Availabilities.Services.ListPlannableProductsRequest,
      Google.Ads.Googleads.V8Availabilities.Services.ListPlannableProductsResponse

  rpc :GenerateProductMixIdeas,
      Google.Ads.Googleads.V8Availabilities.Services.GenerateProductMixIdeasRequest,
      Google.Ads.Googleads.V8Availabilities.Services.GenerateProductMixIdeasResponse

  rpc :GenerateReachForecast,
      Google.Ads.Googleads.V8Availabilities.Services.GenerateReachForecastRequest,
      Google.Ads.Googleads.V8Availabilities.Services.GenerateReachForecastResponse
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ReachPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8Availabilities.Services.ReachPlanService.Service
end
