defmodule Google.Ads.Googleads.V10.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V10.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_locations: [Google.Ads.Googleads.V10.Services.PlannableLocation.t()]
        }

  defstruct plannable_locations: []

  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.PlannableLocation,
    json_name: "plannableLocations"
end
defmodule Google.Ads.Googleads.V10.Services.PlannableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          parent_country_id: integer,
          country_code: String.t(),
          location_type: String.t()
        }

  defstruct id: "",
            name: "",
            parent_country_id: 0,
            country_code: "",
            location_type: ""

  field :id, 4, type: :string
  field :name, 5, type: :string
  field :parent_country_id, 6, type: :int64, json_name: "parentCountryId"
  field :country_code, 7, type: :string, json_name: "countryCode"
  field :location_type, 8, type: :string, json_name: "locationType"
end
defmodule Google.Ads.Googleads.V10.Services.ListPlannableProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: String.t()
        }

  defstruct plannable_location_id: ""

  field :plannable_location_id, 2,
    type: :string,
    json_name: "plannableLocationId",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_metadata: [Google.Ads.Googleads.V10.Services.ProductMetadata.t()]
        }

  defstruct product_metadata: []

  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.ProductMetadata,
    json_name: "productMetadata"
end
defmodule Google.Ads.Googleads.V10.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          plannable_product_name: String.t(),
          plannable_targeting: Google.Ads.Googleads.V10.Services.PlannableTargeting.t() | nil
        }

  defstruct plannable_product_code: "",
            plannable_product_name: "",
            plannable_targeting: nil

  field :plannable_product_code, 4, type: :string, json_name: "plannableProductCode"
  field :plannable_product_name, 3, type: :string, json_name: "plannableProductName"

  field :plannable_targeting, 2,
    type: Google.Ads.Googleads.V10.Services.PlannableTargeting,
    json_name: "plannableTargeting"
end
defmodule Google.Ads.Googleads.V10.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          age_ranges: [Google.Ads.Googleads.V10.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t()],
          genders: [Google.Ads.Googleads.V10.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V10.Common.DeviceInfo.t()],
          networks: [Google.Ads.Googleads.V10.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()]
        }

  defstruct age_ranges: [],
            genders: [],
            devices: [],
            networks: []

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    json_name: "ageRanges",
    enum: true

  field :genders, 2, repeated: true, type: Google.Ads.Googleads.V10.Common.GenderInfo
  field :devices, 3, repeated: true, type: Google.Ads.Googleads.V10.Common.DeviceInfo

  field :networks, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.GenerateProductMixIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          plannable_location_id: String.t(),
          currency_code: String.t(),
          budget_micros: integer,
          preferences: Google.Ads.Googleads.V10.Services.Preferences.t() | nil
        }

  defstruct customer_id: "",
            plannable_location_id: "",
            currency_code: "",
            budget_micros: 0,
            preferences: nil

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :plannable_location_id, 6,
    type: :string,
    json_name: "plannableLocationId",
    deprecated: false

  field :currency_code, 7, type: :string, json_name: "currencyCode", deprecated: false
  field :budget_micros, 8, type: :int64, json_name: "budgetMicros", deprecated: false
  field :preferences, 5, type: Google.Ads.Googleads.V10.Services.Preferences
end
defmodule Google.Ads.Googleads.V10.Services.Preferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_skippable: boolean,
          starts_with_sound: boolean,
          ad_length: Google.Ads.Googleads.V10.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength.t(),
          top_content_only: boolean,
          has_guaranteed_price: boolean
        }

  defstruct is_skippable: false,
            starts_with_sound: false,
            ad_length: :UNSPECIFIED,
            top_content_only: false,
            has_guaranteed_price: false

  field :is_skippable, 6, type: :bool, json_name: "isSkippable"
  field :starts_with_sound, 7, type: :bool, json_name: "startsWithSound"

  field :ad_length, 3,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength,
    json_name: "adLength",
    enum: true

  field :top_content_only, 8, type: :bool, json_name: "topContentOnly"
  field :has_guaranteed_price, 9, type: :bool, json_name: "hasGuaranteedPrice"
end
defmodule Google.Ads.Googleads.V10.Services.GenerateProductMixIdeasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_allocation: [Google.Ads.Googleads.V10.Services.ProductAllocation.t()]
        }

  defstruct product_allocation: []

  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.ProductAllocation,
    json_name: "productAllocation"
end
defmodule Google.Ads.Googleads.V10.Services.ProductAllocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          budget_micros: integer
        }

  defstruct plannable_product_code: "",
            budget_micros: 0

  field :plannable_product_code, 3, type: :string, json_name: "plannableProductCode"
  field :budget_micros, 4, type: :int64, json_name: "budgetMicros"
end
defmodule Google.Ads.Googleads.V10.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          currency_code: String.t(),
          campaign_duration: Google.Ads.Googleads.V10.Services.CampaignDuration.t() | nil,
          cookie_frequency_cap: integer,
          cookie_frequency_cap_setting: Google.Ads.Googleads.V10.Services.FrequencyCap.t() | nil,
          min_effective_frequency: integer,
          effective_frequency_limit:
            Google.Ads.Googleads.V10.Services.EffectiveFrequencyLimit.t() | nil,
          targeting: Google.Ads.Googleads.V10.Services.Targeting.t() | nil,
          planned_products: [Google.Ads.Googleads.V10.Services.PlannedProduct.t()]
        }

  defstruct customer_id: "",
            currency_code: "",
            campaign_duration: nil,
            cookie_frequency_cap: 0,
            cookie_frequency_cap_setting: nil,
            min_effective_frequency: 0,
            effective_frequency_limit: nil,
            targeting: nil,
            planned_products: []

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :currency_code, 9, type: :string, json_name: "currencyCode"

  field :campaign_duration, 3,
    type: Google.Ads.Googleads.V10.Services.CampaignDuration,
    json_name: "campaignDuration",
    deprecated: false

  field :cookie_frequency_cap, 10, type: :int32, json_name: "cookieFrequencyCap"

  field :cookie_frequency_cap_setting, 8,
    type: Google.Ads.Googleads.V10.Services.FrequencyCap,
    json_name: "cookieFrequencyCapSetting"

  field :min_effective_frequency, 11, type: :int32, json_name: "minEffectiveFrequency"

  field :effective_frequency_limit, 12,
    type: Google.Ads.Googleads.V10.Services.EffectiveFrequencyLimit,
    json_name: "effectiveFrequencyLimit"

  field :targeting, 6, type: Google.Ads.Googleads.V10.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.PlannedProduct,
    json_name: "plannedProducts",
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.EffectiveFrequencyLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          effective_frequency_breakdown_limit: integer
        }

  defstruct effective_frequency_breakdown_limit: 0

  field :effective_frequency_breakdown_limit, 1,
    type: :int32,
    json_name: "effectiveFrequencyBreakdownLimit"
end
defmodule Google.Ads.Googleads.V10.Services.FrequencyCap do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: integer,
          time_unit:
            Google.Ads.Googleads.V10.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit.t()
        }

  defstruct impressions: 0,
            time_unit: :UNSPECIFIED

  field :impressions, 3, type: :int32, deprecated: false

  field :time_unit, 2,
    type: Google.Ads.Googleads.V10.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    json_name: "timeUnit",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.Targeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: String.t(),
          age_range: Google.Ads.Googleads.V10.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t(),
          genders: [Google.Ads.Googleads.V10.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V10.Common.DeviceInfo.t()],
          network: Google.Ads.Googleads.V10.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()
        }

  defstruct plannable_location_id: "",
            age_range: :UNSPECIFIED,
            genders: [],
            devices: [],
            network: :UNSPECIFIED

  field :plannable_location_id, 6, type: :string, json_name: "plannableLocationId"

  field :age_range, 2,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    json_name: "ageRange",
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V10.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V10.Common.DeviceInfo

  field :network, 5,
    type: Google.Ads.Googleads.V10.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.CampaignDuration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration_in_days: integer,
          date_range: Google.Ads.Googleads.V10.Common.DateRange.t() | nil
        }

  defstruct duration_in_days: 0,
            date_range: nil

  field :duration_in_days, 2, type: :int32, json_name: "durationInDays"
  field :date_range, 3, type: Google.Ads.Googleads.V10.Common.DateRange, json_name: "dateRange"
end
defmodule Google.Ads.Googleads.V10.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          budget_micros: integer
        }

  defstruct plannable_product_code: "",
            budget_micros: 0

  field :plannable_product_code, 3, type: :string, json_name: "plannableProductCode"
  field :budget_micros, 4, type: :int64, json_name: "budgetMicros"
end
defmodule Google.Ads.Googleads.V10.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_audience_metrics:
            Google.Ads.Googleads.V10.Services.OnTargetAudienceMetrics.t() | nil,
          reach_curve: Google.Ads.Googleads.V10.Services.ReachCurve.t() | nil
        }

  defstruct on_target_audience_metrics: nil,
            reach_curve: nil

  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V10.Services.OnTargetAudienceMetrics,
    json_name: "onTargetAudienceMetrics"

  field :reach_curve, 2,
    type: Google.Ads.Googleads.V10.Services.ReachCurve,
    json_name: "reachCurve"
end
defmodule Google.Ads.Googleads.V10.Services.ReachCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reach_forecasts: [Google.Ads.Googleads.V10.Services.ReachForecast.t()]
        }

  defstruct reach_forecasts: []

  field :reach_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.ReachForecast,
    json_name: "reachForecasts"
end
defmodule Google.Ads.Googleads.V10.Services.ReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_micros: integer,
          forecast: Google.Ads.Googleads.V10.Services.Forecast.t() | nil,
          planned_product_reach_forecasts: [
            Google.Ads.Googleads.V10.Services.PlannedProductReachForecast.t()
          ]
        }

  defstruct cost_micros: 0,
            forecast: nil,
            planned_product_reach_forecasts: []

  field :cost_micros, 5, type: :int64, json_name: "costMicros"
  field :forecast, 2, type: Google.Ads.Googleads.V10.Services.Forecast

  field :planned_product_reach_forecasts, 4,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.PlannedProductReachForecast,
    json_name: "plannedProductReachForecasts"
end
defmodule Google.Ads.Googleads.V10.Services.Forecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: integer,
          total_reach: integer,
          on_target_impressions: integer,
          total_impressions: integer,
          viewable_impressions: integer,
          effective_frequency_breakdowns: [
            Google.Ads.Googleads.V10.Services.EffectiveFrequencyBreakdown.t()
          ]
        }

  defstruct on_target_reach: 0,
            total_reach: 0,
            on_target_impressions: 0,
            total_impressions: 0,
            viewable_impressions: 0,
            effective_frequency_breakdowns: []

  field :on_target_reach, 5, type: :int64, json_name: "onTargetReach"
  field :total_reach, 6, type: :int64, json_name: "totalReach"
  field :on_target_impressions, 7, type: :int64, json_name: "onTargetImpressions"
  field :total_impressions, 8, type: :int64, json_name: "totalImpressions"
  field :viewable_impressions, 9, type: :int64, json_name: "viewableImpressions"

  field :effective_frequency_breakdowns, 10,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.EffectiveFrequencyBreakdown,
    json_name: "effectiveFrequencyBreakdowns"
end
defmodule Google.Ads.Googleads.V10.Services.PlannedProductReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          cost_micros: integer,
          planned_product_forecast:
            Google.Ads.Googleads.V10.Services.PlannedProductForecast.t() | nil
        }

  defstruct plannable_product_code: "",
            cost_micros: 0,
            planned_product_forecast: nil

  field :plannable_product_code, 1, type: :string, json_name: "plannableProductCode"
  field :cost_micros, 2, type: :int64, json_name: "costMicros"

  field :planned_product_forecast, 3,
    type: Google.Ads.Googleads.V10.Services.PlannedProductForecast,
    json_name: "plannedProductForecast"
end
defmodule Google.Ads.Googleads.V10.Services.PlannedProductForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: integer,
          total_reach: integer,
          on_target_impressions: integer,
          total_impressions: integer,
          viewable_impressions: integer
        }

  defstruct on_target_reach: 0,
            total_reach: 0,
            on_target_impressions: 0,
            total_impressions: 0,
            viewable_impressions: 0

  field :on_target_reach, 1, type: :int64, json_name: "onTargetReach"
  field :total_reach, 2, type: :int64, json_name: "totalReach"
  field :on_target_impressions, 3, type: :int64, json_name: "onTargetImpressions"
  field :total_impressions, 4, type: :int64, json_name: "totalImpressions"
  field :viewable_impressions, 5, type: :int64, json_name: "viewableImpressions"
end
defmodule Google.Ads.Googleads.V10.Services.OnTargetAudienceMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          youtube_audience_size: integer,
          census_audience_size: integer
        }

  defstruct youtube_audience_size: 0,
            census_audience_size: 0

  field :youtube_audience_size, 3, type: :int64, json_name: "youtubeAudienceSize"
  field :census_audience_size, 4, type: :int64, json_name: "censusAudienceSize"
end
defmodule Google.Ads.Googleads.V10.Services.EffectiveFrequencyBreakdown do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          effective_frequency: integer,
          on_target_reach: integer,
          total_reach: integer
        }

  defstruct effective_frequency: 0,
            on_target_reach: 0,
            total_reach: 0

  field :effective_frequency, 1, type: :int32, json_name: "effectiveFrequency"
  field :on_target_reach, 2, type: :int64, json_name: "onTargetReach"
  field :total_reach, 3, type: :int64, json_name: "totalReach"
end
defmodule Google.Ads.Googleads.V10.Services.ReachPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.ReachPlanService"

  rpc :ListPlannableLocations,
      Google.Ads.Googleads.V10.Services.ListPlannableLocationsRequest,
      Google.Ads.Googleads.V10.Services.ListPlannableLocationsResponse

  rpc :ListPlannableProducts,
      Google.Ads.Googleads.V10.Services.ListPlannableProductsRequest,
      Google.Ads.Googleads.V10.Services.ListPlannableProductsResponse

  rpc :GenerateProductMixIdeas,
      Google.Ads.Googleads.V10.Services.GenerateProductMixIdeasRequest,
      Google.Ads.Googleads.V10.Services.GenerateProductMixIdeasResponse

  rpc :GenerateReachForecast,
      Google.Ads.Googleads.V10.Services.GenerateReachForecastRequest,
      Google.Ads.Googleads.V10.Services.GenerateReachForecastResponse
end

defmodule Google.Ads.Googleads.V10.Services.ReachPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.ReachPlanService.Service
end
