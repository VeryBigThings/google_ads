defmodule Google.Ads.Googleads.V8Availabilities.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.PlannableLocation
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :id, 4, type: :string
  field :name, 5, type: :string
  field :parent_country_id, 6, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListPlannableProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :plannable_location_id, 2, type: :string
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ProductMetadata
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :plannable_product_code, 4, type: :string
  field :plannable_product_name, 3, type: :string
  field :plannable_targeting, 2, type: Google.Ads.Googleads.V8Availabilities.Services.PlannableTargeting
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3



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



  field :customer_id, 1, type: :string
  field :plannable_location_id, 6, type: :string
  field :currency_code, 7, type: :string
  field :budget_micros, 8, type: :int64
  field :preferences, 5, type: Google.Ads.Googleads.V8Availabilities.Services.Preferences
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.Preferences do
  @moduledoc false
  use Protobuf, syntax: :proto3



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



  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.ProductAllocation
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ProductAllocation do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :plannable_product_code, 3, type: :string
  field :budget_micros, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3



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



  field :impressions, 3, type: :int32

  field :time_unit, 2,
    type: Google.Ads.Googleads.V8Availabilities.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.Targeting do
  @moduledoc false
  use Protobuf, syntax: :proto3



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



  field :duration_in_days, 2, type: :int32
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :plannable_product_code, 3, type: :string
  field :budget_micros, 4, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V8Availabilities.Services.OnTargetAudienceMetrics

  field :reach_curve, 2, type: Google.Ads.Googleads.V8Availabilities.Services.ReachCurve
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ReachCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :reach_forecasts, 1, repeated: true, type: Google.Ads.Googleads.V8Availabilities.Services.ReachForecast
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.ReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :cost_micros, 5, type: :int64
  field :forecast, 2, type: Google.Ads.Googleads.V8Availabilities.Services.Forecast

  field :planned_product_reach_forecasts, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8Availabilities.Services.PlannedProductReachForecast
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.Forecast do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :on_target_reach, 5, type: :int64
  field :total_reach, 6, type: :int64
  field :on_target_impressions, 7, type: :int64
  field :total_impressions, 8, type: :int64
  field :viewable_impressions, 9, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannedProductReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :plannable_product_code, 1, type: :string
  field :cost_micros, 2, type: :int64

  field :planned_product_forecast, 3,
    type: Google.Ads.Googleads.V8Availabilities.Services.PlannedProductForecast
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.PlannedProductForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :on_target_reach, 1, type: :int64
  field :total_reach, 2, type: :int64
  field :on_target_impressions, 3, type: :int64
  field :total_impressions, 4, type: :int64
  field :viewable_impressions, 5, type: :int64
end

defmodule Google.Ads.Googleads.V8Availabilities.Services.OnTargetAudienceMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3



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
