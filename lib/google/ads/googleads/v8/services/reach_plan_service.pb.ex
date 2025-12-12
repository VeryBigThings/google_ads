defmodule Google.Ads.Googleads.V8.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2

end

defmodule Google.Ads.Googleads.V8.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.PlannableLocation
end

defmodule Google.Ads.Googleads.V8.Services.PlannableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :id, 4, optional: true, type: :string
  field :name, 5, optional: true, type: :string
  field :parent_country_id, 6, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.ListPlannableProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :plannable_location_id, 2, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ProductMetadata
end

defmodule Google.Ads.Googleads.V8.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :plannable_product_code, 4, optional: true, type: :string
  field :plannable_product_name, 3, optional: true, type: :string

  field :plannable_targeting, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.PlannableTargeting
end

defmodule Google.Ads.Googleads.V8.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto2



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
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :plannable_location_id, 6, required: true, type: :string
  field :currency_code, 7, required: true, type: :string
  field :budget_micros, 8, required: true, type: :int64
  field :preferences, 5, optional: true, type: Google.Ads.Googleads.V8.Services.Preferences
end

defmodule Google.Ads.Googleads.V8.Services.Preferences do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :is_skippable, 6, optional: true, type: :bool
  field :starts_with_sound, 7, optional: true, type: :bool

  field :ad_length, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength,
    enum: true

  field :top_content_only, 8, optional: true, type: :bool
  field :has_guaranteed_price, 9, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.GenerateProductMixIdeasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ProductAllocation
end

defmodule Google.Ads.Googleads.V8.Services.ProductAllocation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :plannable_product_code, 3, optional: true, type: :string
  field :budget_micros, 4, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string
  field :currency_code, 9, optional: true, type: :string

  field :campaign_duration, 3,
    required: true,
    type: Google.Ads.Googleads.V8.Services.CampaignDuration

  field :cookie_frequency_cap, 10, optional: true, type: :int32

  field :cookie_frequency_cap_setting, 8,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.FrequencyCap

  field :min_effective_frequency, 11, optional: true, type: :int32
  field :targeting, 6, optional: true, type: Google.Ads.Googleads.V8.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.PlannedProduct
end

defmodule Google.Ads.Googleads.V8.Services.FrequencyCap do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :impressions, 3, required: true, type: :int32

  field :time_unit, 2,
    required: true,
    type: Google.Ads.Googleads.V8.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.Targeting do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :plannable_location_id, 6, optional: true, type: :string

  field :age_range, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V8.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V8.Common.DeviceInfo

  field :network, 5,
    optional: true,
    type: Google.Ads.Googleads.V8.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CampaignDuration do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :duration_in_days, 2, optional: true, type: :int32
end

defmodule Google.Ads.Googleads.V8.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :plannable_product_code, 3, optional: true, type: :string
  field :budget_micros, 4, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :on_target_audience_metrics, 1,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.OnTargetAudienceMetrics

  field :reach_curve, 2, optional: true, type: Google.Ads.Googleads.V8.Services.ReachCurve
end

defmodule Google.Ads.Googleads.V8.Services.ReachCurve do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :reach_forecasts, 1, repeated: true, type: Google.Ads.Googleads.V8.Services.ReachForecast
end

defmodule Google.Ads.Googleads.V8.Services.ReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :cost_micros, 5, optional: true, type: :int64
  field :forecast, 2, optional: true, type: Google.Ads.Googleads.V8.Services.Forecast

  field :planned_product_reach_forecasts, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.PlannedProductReachForecast
end

defmodule Google.Ads.Googleads.V8.Services.Forecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :on_target_reach, 5, optional: true, type: :int64
  field :total_reach, 6, optional: true, type: :int64
  field :on_target_impressions, 7, optional: true, type: :int64
  field :total_impressions, 8, optional: true, type: :int64
  field :viewable_impressions, 9, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.PlannedProductReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :plannable_product_code, 1, optional: true, type: :string
  field :cost_micros, 2, optional: true, type: :int64

  field :planned_product_forecast, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.PlannedProductForecast
end

defmodule Google.Ads.Googleads.V8.Services.PlannedProductForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :on_target_reach, 1, optional: true, type: :int64
  field :total_reach, 2, optional: true, type: :int64
  field :on_target_impressions, 3, optional: true, type: :int64
  field :total_impressions, 4, optional: true, type: :int64
  field :viewable_impressions, 5, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.OnTargetAudienceMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :youtube_audience_size, 3, optional: true, type: :int64
  field :census_audience_size, 4, optional: true, type: :int64
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
