defmodule Google.Ads.Googleads.V4.Services.GetKeywordPlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.KeywordPlan, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.KeywordPlan, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlansResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateKeywordPlansResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateKeywordPlansResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GenerateForecastCurveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GenerateForecastCurveResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :campaign_forecast_curves, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecastCurve
end

defmodule Google.Ads.Googleads.V4.Services.GenerateForecastMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GenerateForecastMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :campaign_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecast

  field :ad_group_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupForecast

  field :keyword_forecasts, 3,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanKeywordForecast
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_campaign, 1, type: Google.Protobuf.StringValue
  field :campaign_forecast, 2, type: Google.Ads.Googleads.V4.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanAdGroupForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_ad_group, 1, type: Google.Protobuf.StringValue
  field :ad_group_forecast, 2, type: Google.Ads.Googleads.V4.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanKeywordForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_ad_group_keyword, 1, type: Google.Protobuf.StringValue
  field :keyword_forecast, 2, type: Google.Ads.Googleads.V4.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanCampaignForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_campaign, 1, type: Google.Protobuf.StringValue

  field :max_cpc_bid_forecast_curve, 2,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecastCurve
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :max_cpc_bid_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecast
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanMaxCpcBidForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :max_cpc_bid_micros, 1, type: Google.Protobuf.Int64Value
  field :max_cpc_bid_forecast, 2, type: Google.Ads.Googleads.V4.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V4.Services.ForecastMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :impressions, 1, type: Google.Protobuf.DoubleValue
  field :ctr, 2, type: Google.Protobuf.DoubleValue
  field :average_cpc, 3, type: Google.Protobuf.Int64Value
  field :clicks, 5, type: Google.Protobuf.DoubleValue
  field :cost_micros, 6, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.GenerateHistoricalMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GenerateHistoricalMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :metrics, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.KeywordPlanKeywordHistoricalMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanKeywordHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :search_query, 1, type: Google.Protobuf.StringValue
  field :keyword_metrics, 2, type: Google.Ads.Googleads.V4.Common.KeywordPlanHistoricalMetrics
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.KeywordPlanService"

  rpc :GetKeywordPlan,
      Google.Ads.Googleads.V4.Services.GetKeywordPlanRequest,
      Google.Ads.Googleads.V4.Resources.KeywordPlan

  rpc :MutateKeywordPlans,
      Google.Ads.Googleads.V4.Services.MutateKeywordPlansRequest,
      Google.Ads.Googleads.V4.Services.MutateKeywordPlansResponse

  rpc :GenerateForecastCurve,
      Google.Ads.Googleads.V4.Services.GenerateForecastCurveRequest,
      Google.Ads.Googleads.V4.Services.GenerateForecastCurveResponse

  rpc :GenerateForecastMetrics,
      Google.Ads.Googleads.V4.Services.GenerateForecastMetricsRequest,
      Google.Ads.Googleads.V4.Services.GenerateForecastMetricsResponse

  rpc :GenerateHistoricalMetrics,
      Google.Ads.Googleads.V4.Services.GenerateHistoricalMetricsRequest,
      Google.Ads.Googleads.V4.Services.GenerateHistoricalMetricsResponse
end

defmodule Google.Ads.Googleads.V4.Services.KeywordPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.KeywordPlanService.Service
end
