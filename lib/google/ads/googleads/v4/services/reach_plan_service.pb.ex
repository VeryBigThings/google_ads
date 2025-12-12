defmodule Google.Ads.Googleads.V4.Services.ListPlannableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

end

defmodule Google.Ads.Googleads.V4.Services.ListPlannableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :plannable_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.PlannableLocation
end

defmodule Google.Ads.Googleads.V4.Services.PlannableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :id, 1, type: Google.Protobuf.StringValue
  field :name, 2, type: Google.Protobuf.StringValue
  field :parent_country_id, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.ListPlannableProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :plannable_location_id, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.ListPlannableProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :product_metadata, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.ProductMetadata
end

defmodule Google.Ads.Googleads.V4.Services.ProductMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :plannable_product_code, 1, type: Google.Protobuf.StringValue
  field :plannable_targeting, 2, type: Google.Ads.Googleads.V4.Services.PlannableTargeting
end

defmodule Google.Ads.Googleads.V4.Services.PlannableTargeting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.GenderInfo
  field :devices, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.DeviceInfo

  field :networks, 4,
    repeated: true,
    type: Google.Ads.Googleads.V4.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Services.GenerateProductMixIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :plannable_location_id, 2, type: Google.Protobuf.StringValue
  field :currency_code, 3, type: Google.Protobuf.StringValue
  field :budget_micros, 4, type: Google.Protobuf.Int64Value
  field :preferences, 5, type: Google.Ads.Googleads.V4.Services.Preferences
end

defmodule Google.Ads.Googleads.V4.Services.Preferences do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :is_skippable, 1, type: Google.Protobuf.BoolValue
  field :starts_with_sound, 2, type: Google.Protobuf.BoolValue

  field :ad_length, 3,
    type: Google.Ads.Googleads.V4.Enums.ReachPlanAdLengthEnum.ReachPlanAdLength,
    enum: true

  field :top_content_only, 4, type: Google.Protobuf.BoolValue
  field :has_guaranteed_price, 5, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V4.Services.GenerateProductMixIdeasResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :product_allocation, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.ProductAllocation
end

defmodule Google.Ads.Googleads.V4.Services.ProductAllocation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :plannable_product_code, 1, type: Google.Protobuf.StringValue
  field :budget_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.GenerateReachForecastRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string
  field :currency_code, 2, type: Google.Protobuf.StringValue
  field :campaign_duration, 3, type: Google.Ads.Googleads.V4.Services.CampaignDuration
  field :cookie_frequency_cap, 4, type: Google.Protobuf.Int32Value
  field :cookie_frequency_cap_setting, 8, type: Google.Ads.Googleads.V4.Services.FrequencyCap
  field :min_effective_frequency, 5, type: Google.Protobuf.Int32Value
  field :targeting, 6, type: Google.Ads.Googleads.V4.Services.Targeting

  field :planned_products, 7,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.PlannedProduct
end

defmodule Google.Ads.Googleads.V4.Services.FrequencyCap do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :impressions, 1, type: Google.Protobuf.Int32Value

  field :time_unit, 2,
    type: Google.Ads.Googleads.V4.Enums.FrequencyCapTimeUnitEnum.FrequencyCapTimeUnit,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Services.Targeting do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :plannable_location_id, 1, type: Google.Protobuf.StringValue

  field :age_range, 2,
    type: Google.Ads.Googleads.V4.Enums.ReachPlanAgeRangeEnum.ReachPlanAgeRange,
    enum: true

  field :genders, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.GenderInfo
  field :devices, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.DeviceInfo

  field :network, 5,
    type: Google.Ads.Googleads.V4.Enums.ReachPlanNetworkEnum.ReachPlanNetwork,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Services.CampaignDuration do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :duration_in_days, 1, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V4.Services.PlannedProduct do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :plannable_product_code, 1, type: Google.Protobuf.StringValue
  field :budget_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.GenerateReachForecastResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :on_target_audience_metrics, 1,
    type: Google.Ads.Googleads.V4.Services.OnTargetAudienceMetrics

  field :reach_curve, 2, type: Google.Ads.Googleads.V4.Services.ReachCurve
end

defmodule Google.Ads.Googleads.V4.Services.ReachCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :reach_forecasts, 1, repeated: true, type: Google.Ads.Googleads.V4.Services.ReachForecast
end

defmodule Google.Ads.Googleads.V4.Services.ReachForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :cost_micros, 1, type: Google.Protobuf.Int64Value
  field :forecast, 2, type: Google.Ads.Googleads.V4.Services.Forecast

  field :forecasted_product_allocations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.ProductAllocation
end

defmodule Google.Ads.Googleads.V4.Services.Forecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :on_target_reach, 1, type: Google.Protobuf.Int64Value
  field :total_reach, 2, type: Google.Protobuf.Int64Value
  field :on_target_impressions, 3, type: Google.Protobuf.Int64Value
  field :total_impressions, 4, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.OnTargetAudienceMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :youtube_audience_size, 1, type: Google.Protobuf.Int64Value
  field :census_audience_size, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.ReachPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.ReachPlanService"

  rpc :ListPlannableLocations,
      Google.Ads.Googleads.V4.Services.ListPlannableLocationsRequest,
      Google.Ads.Googleads.V4.Services.ListPlannableLocationsResponse

  rpc :ListPlannableProducts,
      Google.Ads.Googleads.V4.Services.ListPlannableProductsRequest,
      Google.Ads.Googleads.V4.Services.ListPlannableProductsResponse

  rpc :GenerateProductMixIdeas,
      Google.Ads.Googleads.V4.Services.GenerateProductMixIdeasRequest,
      Google.Ads.Googleads.V4.Services.GenerateProductMixIdeasResponse

  rpc :GenerateReachForecast,
      Google.Ads.Googleads.V4.Services.GenerateReachForecastRequest,
      Google.Ads.Googleads.V4.Services.GenerateReachForecastResponse
end

defmodule Google.Ads.Googleads.V4.Services.ReachPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.ReachPlanService.Service
end
