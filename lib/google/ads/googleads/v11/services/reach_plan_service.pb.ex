defmodule Google.Ads.Googleads.V11.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Ads.Googleads.V11.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_locations: [Google.Ads.Googleads.V11.Services.PlannableLocation.t()]
        }

  defstruct plannable_locations: []

  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.PlannableLocation,
    json_name: "plannableLocations"
end
defmodule Google.Ads.Googleads.V11.Services.PlannableLocation do
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
defmodule Google.Ads.Googleads.V11.Services.ListPlannableProductsRequest do
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
defmodule Google.Ads.Googleads.V11.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_metadata: [Google.Ads.Googleads.V11.Services.ProductMetadata.t()]
        }

  defstruct product_metadata: []

  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ProductMetadata,
    json_name: "productMetadata"
end
defmodule Google.Ads.Googleads.V11.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          plannable_product_name: String.t(),
          plannable_targeting: Google.Ads.Googleads.V11.Services.PlannableTargeting.t() | nil
        }

  defstruct plannable_product_code: "",
            plannable_product_name: "",
            plannable_targeting: nil

  field :plannable_product_code, 4, type: :string, json_name: "plannableProductCode"
  field :plannable_product_name, 3, type: :string, json_name: "plannableProductName"

  field :plannable_targeting, 2,
    type: Google.Ads.Googleads.V11.Services.PlannableTargeting,
    json_name: "plannableTargeting"
end
defmodule Google.Ads.Googleads.V11.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          age_ranges: [Google.Ads.Googleads.V11.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t()],
          genders: [Google.Ads.Googleads.V11.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V11.Common.DeviceInfo.t()],
          networks: [Google.Ads.Googleads.V11.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t()],
          youtube_select_lineups: [Google.Ads.Googleads.V11.Services.YouTubeSelectLineUp.t()]
        }

  defstruct age_ranges: [],
            genders: [],
            devices: [],
            networks: [],
            youtube_select_lineups: []

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    json_name: "ageRanges",
    enum: true

  field :genders, 2, repeated: true, type: Google.Ads.Googleads.V11.Common.GenderInfo
  field :devices, 3, repeated: true, type: Google.Ads.Googleads.V11.Common.DeviceInfo

  field :networks, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true

  field :youtube_select_lineups, 5,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.YouTubeSelectLineUp,
    json_name: "youtubeSelectLineups"
end
defmodule Google.Ads.Googleads.V11.Services.GenerateProductMixIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          plannable_location_id: String.t(),
          currency_code: String.t(),
          budget_micros: integer,
          preferences: Google.Ads.Googleads.V11.Services.Preferences.t() | nil
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
  field :preferences, 5, type: Google.Ads.Googleads.V11.Services.Preferences
end
defmodule Google.Ads.Googleads.V11.Services.Preferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_skippable: boolean,
          starts_with_sound: boolean,
          ad_length: Google.Ads.Googleads.V11.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength.t(),
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
    type: Google.Ads.Googleads.V11.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength,
    json_name: "adLength",
    enum: true

  field :top_content_only, 8, type: :bool, json_name: "topContentOnly"
  field :has_guaranteed_price, 9, type: :bool, json_name: "hasGuaranteedPrice"
end
defmodule Google.Ads.Googleads.V11.Services.GenerateProductMixIdeasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_allocation: [Google.Ads.Googleads.V11.Services.ProductAllocation.t()]
        }

  defstruct product_allocation: []

  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ProductAllocation,
    json_name: "productAllocation"
end
defmodule Google.Ads.Googleads.V11.Services.ProductAllocation do
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
defmodule Google.Ads.Googleads.V11.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          currency_code: String.t(),
          campaign_duration: Google.Ads.Googleads.V11.Services.CampaignDuration.t() | nil,
          cookie_frequency_cap: integer,
          cookie_frequency_cap_setting: Google.Ads.Googleads.V11.Services.FrequencyCap.t() | nil,
          min_effective_frequency: integer,
          effective_frequency_limit:
            Google.Ads.Googleads.V11.Services.EffectiveFrequencyLimit.t() | nil,
          targeting: Google.Ads.Googleads.V11.Services.Targeting.t() | nil,
          planned_products: [Google.Ads.Googleads.V11.Services.PlannedProduct.t()],
          forecast_metric_options:
            Google.Ads.Googleads.V11.Services.ForecastMetricOptions.t() | nil,
          customer_reach_group: String.t()
        }

  defstruct customer_id: "",
            currency_code: "",
            campaign_duration: nil,
            cookie_frequency_cap: 0,
            cookie_frequency_cap_setting: nil,
            min_effective_frequency: 0,
            effective_frequency_limit: nil,
            targeting: nil,
            planned_products: [],
            forecast_metric_options: nil,
            customer_reach_group: ""

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :currency_code, 9, type: :string, json_name: "currencyCode"

  field :campaign_duration, 3,
    type: Google.Ads.Googleads.V11.Services.CampaignDuration,
    json_name: "campaignDuration",
    deprecated: false

  field :cookie_frequency_cap, 10, type: :int32, json_name: "cookieFrequencyCap"

  field :cookie_frequency_cap_setting, 8,
    type: Google.Ads.Googleads.V11.Services.FrequencyCap,
    json_name: "cookieFrequencyCapSetting"

  field :min_effective_frequency, 11, type: :int32, json_name: "minEffectiveFrequency"

  field :effective_frequency_limit, 12,
    type: Google.Ads.Googleads.V11.Services.EffectiveFrequencyLimit,
    json_name: "effectiveFrequencyLimit"

  field :targeting, 6, type: Google.Ads.Googleads.V11.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.PlannedProduct,
    json_name: "plannedProducts",
    deprecated: false

  field :forecast_metric_options, 13,
    type: Google.Ads.Googleads.V11.Services.ForecastMetricOptions,
    json_name: "forecastMetricOptions"

  field :customer_reach_group, 14, type: :string, json_name: "customerReachGroup"
end
defmodule Google.Ads.Googleads.V11.Services.EffectiveFrequencyLimit do
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
defmodule Google.Ads.Googleads.V11.Services.FrequencyCap do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: integer,
          time_unit:
            Google.Ads.Googleads.V11.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit.t()
        }

  defstruct impressions: 0,
            time_unit: :UNSPECIFIED

  field :impressions, 3, type: :int32, deprecated: false

  field :time_unit, 2,
    type: Google.Ads.Googleads.V11.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    json_name: "timeUnit",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.Targeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_location_id: String.t(),
          age_range: Google.Ads.Googleads.V11.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange.t(),
          genders: [Google.Ads.Googleads.V11.Common.GenderInfo.t()],
          devices: [Google.Ads.Googleads.V11.Common.DeviceInfo.t()],
          network: Google.Ads.Googleads.V11.Enums.ReachPlanNetworkEnum.ReachPlanNetwork.t(),
          audience_targeting: Google.Ads.Googleads.V11.Services.AudienceTargeting.t() | nil
        }

  defstruct plannable_location_id: "",
            age_range: :UNSPECIFIED,
            genders: [],
            devices: [],
            network: :UNSPECIFIED,
            audience_targeting: nil

  field :plannable_location_id, 6, type: :string, json_name: "plannableLocationId"

  field :age_range, 2,
    type: Google.Ads.Googleads.V11.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    json_name: "ageRange",
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V11.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V11.Common.DeviceInfo

  field :network, 5,
    type: Google.Ads.Googleads.V11.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true

  field :audience_targeting, 7,
    type: Google.Ads.Googleads.V11.Services.AudienceTargeting,
    json_name: "audienceTargeting"
end
defmodule Google.Ads.Googleads.V11.Services.CampaignDuration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration_in_days: integer,
          date_range: Google.Ads.Googleads.V11.Common.DateRange.t() | nil
        }

  defstruct duration_in_days: 0,
            date_range: nil

  field :duration_in_days, 2, type: :int32, json_name: "durationInDays"
  field :date_range, 3, type: Google.Ads.Googleads.V11.Common.DateRange, json_name: "dateRange"
end
defmodule Google.Ads.Googleads.V11.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          budget_micros: integer,
          advanced_product_targeting:
            Google.Ads.Googleads.V11.Services.AdvancedProductTargeting.t() | nil
        }

  defstruct plannable_product_code: "",
            budget_micros: 0,
            advanced_product_targeting: nil

  field :plannable_product_code, 3, type: :string, json_name: "plannableProductCode"
  field :budget_micros, 4, type: :int64, json_name: "budgetMicros"

  field :advanced_product_targeting, 5,
    type: Google.Ads.Googleads.V11.Services.AdvancedProductTargeting,
    json_name: "advancedProductTargeting"
end
defmodule Google.Ads.Googleads.V11.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_audience_metrics:
            Google.Ads.Googleads.V11.Services.OnTargetAudienceMetrics.t() | nil,
          reach_curve: Google.Ads.Googleads.V11.Services.ReachCurve.t() | nil
        }

  defstruct on_target_audience_metrics: nil,
            reach_curve: nil

  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V11.Services.OnTargetAudienceMetrics,
    json_name: "onTargetAudienceMetrics"

  field :reach_curve, 2,
    type: Google.Ads.Googleads.V11.Services.ReachCurve,
    json_name: "reachCurve"
end
defmodule Google.Ads.Googleads.V11.Services.ReachCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reach_forecasts: [Google.Ads.Googleads.V11.Services.ReachForecast.t()]
        }

  defstruct reach_forecasts: []

  field :reach_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ReachForecast,
    json_name: "reachForecasts"
end
defmodule Google.Ads.Googleads.V11.Services.ReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_micros: integer,
          forecast: Google.Ads.Googleads.V11.Services.Forecast.t() | nil,
          planned_product_reach_forecasts: [
            Google.Ads.Googleads.V11.Services.PlannedProductReachForecast.t()
          ]
        }

  defstruct cost_micros: 0,
            forecast: nil,
            planned_product_reach_forecasts: []

  field :cost_micros, 5, type: :int64, json_name: "costMicros"
  field :forecast, 2, type: Google.Ads.Googleads.V11.Services.Forecast

  field :planned_product_reach_forecasts, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.PlannedProductReachForecast,
    json_name: "plannedProductReachForecasts"
end
defmodule Google.Ads.Googleads.V11.Services.Forecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: integer,
          total_reach: integer,
          on_target_impressions: integer,
          total_impressions: integer,
          viewable_impressions: integer,
          effective_frequency_breakdowns: [
            Google.Ads.Googleads.V11.Services.EffectiveFrequencyBreakdown.t()
          ],
          on_target_coview_reach: integer,
          total_coview_reach: integer,
          on_target_coview_impressions: integer,
          total_coview_impressions: integer
        }

  defstruct on_target_reach: 0,
            total_reach: 0,
            on_target_impressions: 0,
            total_impressions: 0,
            viewable_impressions: 0,
            effective_frequency_breakdowns: [],
            on_target_coview_reach: 0,
            total_coview_reach: 0,
            on_target_coview_impressions: 0,
            total_coview_impressions: 0

  field :on_target_reach, 5, type: :int64, json_name: "onTargetReach"
  field :total_reach, 6, type: :int64, json_name: "totalReach"
  field :on_target_impressions, 7, type: :int64, json_name: "onTargetImpressions"
  field :total_impressions, 8, type: :int64, json_name: "totalImpressions"
  field :viewable_impressions, 9, type: :int64, json_name: "viewableImpressions"

  field :effective_frequency_breakdowns, 10,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.EffectiveFrequencyBreakdown,
    json_name: "effectiveFrequencyBreakdowns"

  field :on_target_coview_reach, 11, type: :int64, json_name: "onTargetCoviewReach"
  field :total_coview_reach, 12, type: :int64, json_name: "totalCoviewReach"
  field :on_target_coview_impressions, 13, type: :int64, json_name: "onTargetCoviewImpressions"
  field :total_coview_impressions, 14, type: :int64, json_name: "totalCoviewImpressions"
end
defmodule Google.Ads.Googleads.V11.Services.PlannedProductReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plannable_product_code: String.t(),
          cost_micros: integer,
          planned_product_forecast:
            Google.Ads.Googleads.V11.Services.PlannedProductForecast.t() | nil
        }

  defstruct plannable_product_code: "",
            cost_micros: 0,
            planned_product_forecast: nil

  field :plannable_product_code, 1, type: :string, json_name: "plannableProductCode"
  field :cost_micros, 2, type: :int64, json_name: "costMicros"

  field :planned_product_forecast, 3,
    type: Google.Ads.Googleads.V11.Services.PlannedProductForecast,
    json_name: "plannedProductForecast"
end
defmodule Google.Ads.Googleads.V11.Services.PlannedProductForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_target_reach: integer,
          total_reach: integer,
          on_target_impressions: integer,
          total_impressions: integer,
          viewable_impressions: integer,
          on_target_coview_reach: integer,
          total_coview_reach: integer,
          on_target_coview_impressions: integer,
          total_coview_impressions: integer
        }

  defstruct on_target_reach: 0,
            total_reach: 0,
            on_target_impressions: 0,
            total_impressions: 0,
            viewable_impressions: 0,
            on_target_coview_reach: 0,
            total_coview_reach: 0,
            on_target_coview_impressions: 0,
            total_coview_impressions: 0

  field :on_target_reach, 1, type: :int64, json_name: "onTargetReach"
  field :total_reach, 2, type: :int64, json_name: "totalReach"
  field :on_target_impressions, 3, type: :int64, json_name: "onTargetImpressions"
  field :total_impressions, 4, type: :int64, json_name: "totalImpressions"
  field :viewable_impressions, 5, type: :int64, json_name: "viewableImpressions"
  field :on_target_coview_reach, 6, type: :int64, json_name: "onTargetCoviewReach"
  field :total_coview_reach, 7, type: :int64, json_name: "totalCoviewReach"
  field :on_target_coview_impressions, 8, type: :int64, json_name: "onTargetCoviewImpressions"
  field :total_coview_impressions, 9, type: :int64, json_name: "totalCoviewImpressions"
end
defmodule Google.Ads.Googleads.V11.Services.OnTargetAudienceMetrics do
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
defmodule Google.Ads.Googleads.V11.Services.EffectiveFrequencyBreakdown do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          effective_frequency: integer,
          on_target_reach: integer,
          total_reach: integer,
          effective_coview_reach: integer,
          on_target_effective_coview_reach: integer
        }

  defstruct effective_frequency: 0,
            on_target_reach: 0,
            total_reach: 0,
            effective_coview_reach: 0,
            on_target_effective_coview_reach: 0

  field :effective_frequency, 1, type: :int32, json_name: "effectiveFrequency"
  field :on_target_reach, 2, type: :int64, json_name: "onTargetReach"
  field :total_reach, 3, type: :int64, json_name: "totalReach"
  field :effective_coview_reach, 4, type: :int64, json_name: "effectiveCoviewReach"

  field :on_target_effective_coview_reach, 5,
    type: :int64,
    json_name: "onTargetEffectiveCoviewReach"
end
defmodule Google.Ads.Googleads.V11.Services.ForecastMetricOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_coview: boolean
        }

  defstruct include_coview: false

  field :include_coview, 1, type: :bool, json_name: "includeCoview"
end
defmodule Google.Ads.Googleads.V11.Services.AudienceTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_interest: [Google.Ads.Googleads.V11.Common.UserInterestInfo.t()]
        }

  defstruct user_interest: []

  field :user_interest, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserInterestInfo,
    json_name: "userInterest"
end
defmodule Google.Ads.Googleads.V11.Services.AdvancedProductTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          advanced_targeting:
            {:youtube_select_settings,
             Google.Ads.Googleads.V11.Services.YouTubeSelectSettings.t() | nil}
        }

  defstruct advanced_targeting: nil

  oneof :advanced_targeting, 0

  field :youtube_select_settings, 1,
    type: Google.Ads.Googleads.V11.Services.YouTubeSelectSettings,
    json_name: "youtubeSelectSettings",
    oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.YouTubeSelectSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lineup_id: integer
        }

  defstruct lineup_id: 0

  field :lineup_id, 1, type: :int64, json_name: "lineupId"
end
defmodule Google.Ads.Googleads.V11.Services.YouTubeSelectLineUp do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lineup_id: integer,
          lineup_name: String.t()
        }

  defstruct lineup_id: 0,
            lineup_name: ""

  field :lineup_id, 1, type: :int64, json_name: "lineupId"
  field :lineup_name, 2, type: :string, json_name: "lineupName"
end
defmodule Google.Ads.Googleads.V11.Services.ReachPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v11.services.ReachPlanService"

  rpc :ListPlannableLocations,
      Google.Ads.Googleads.V11.Services.ListPlannableLocationsRequest,
      Google.Ads.Googleads.V11.Services.ListPlannableLocationsResponse

  rpc :ListPlannableProducts,
      Google.Ads.Googleads.V11.Services.ListPlannableProductsRequest,
      Google.Ads.Googleads.V11.Services.ListPlannableProductsResponse

  rpc :GenerateProductMixIdeas,
      Google.Ads.Googleads.V11.Services.GenerateProductMixIdeasRequest,
      Google.Ads.Googleads.V11.Services.GenerateProductMixIdeasResponse

  rpc :GenerateReachForecast,
      Google.Ads.Googleads.V11.Services.GenerateReachForecastRequest,
      Google.Ads.Googleads.V11.Services.GenerateReachForecastResponse
end

defmodule Google.Ads.Googleads.V11.Services.ReachPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.ReachPlanService.Service
end
