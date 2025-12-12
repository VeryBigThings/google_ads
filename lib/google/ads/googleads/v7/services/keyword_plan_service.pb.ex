defmodule Google.Ads.Googleads.V7.Services.GetKeywordPlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3


  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.KeywordPlan, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.KeywordPlan, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlansResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateKeywordPlansResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlansResult do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.GenerateForecastCurveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.GenerateForecastCurveResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :campaign_forecast_curves, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanCampaignForecastCurve
end

defmodule Google.Ads.Googleads.V7.Services.GenerateForecastTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.GenerateForecastTimeSeriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :weekly_time_series_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanWeeklyTimeSeriesForecast
end

defmodule Google.Ads.Googleads.V7.Services.GenerateForecastMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.GenerateForecastMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :campaign_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanCampaignForecast

  field :ad_group_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupForecast

  field :keyword_forecasts, 3,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanKeywordForecast
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanCampaignForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_campaign, 3, type: :string
  field :campaign_forecast, 2, type: Google.Ads.Googleads.V7.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_ad_group, 3, type: :string
  field :ad_group_forecast, 2, type: Google.Ads.Googleads.V7.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanKeywordForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_ad_group_keyword, 3, type: :string
  field :keyword_forecast, 2, type: Google.Ads.Googleads.V7.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanCampaignForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_campaign, 3, type: :string

  field :max_cpc_bid_forecast_curve, 2,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanMaxCpcBidForecastCurve
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanMaxCpcBidForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :max_cpc_bid_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanMaxCpcBidForecast
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanMaxCpcBidForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :max_cpc_bid_micros, 3, type: :int64
  field :max_cpc_bid_forecast, 2, type: Google.Ads.Googleads.V7.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanWeeklyTimeSeriesForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan_campaign, 1, type: :string

  field :weekly_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanWeeklyForecast
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanWeeklyForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :start_date, 1, type: :string
  field :forecast, 2, type: Google.Ads.Googleads.V7.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V7.Services.ForecastMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :impressions, 7, type: :double
  field :ctr, 8, type: :double
  field :average_cpc, 9, type: :int64
  field :clicks, 10, type: :double
  field :cost_micros, 11, type: :int64
end

defmodule Google.Ads.Googleads.V7.Services.GenerateHistoricalMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :keyword_plan, 1, type: :string
  field :aggregate_metrics, 2, type: Google.Ads.Googleads.V7.Common.KeywordPlanAggregateMetrics

  field :historical_metrics_options, 3,
    type: Google.Ads.Googleads.V7.Common.HistoricalMetricsOptions
end

defmodule Google.Ads.Googleads.V7.Services.GenerateHistoricalMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :metrics, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanKeywordHistoricalMetrics

  field :aggregate_metric_results, 2,
    type: Google.Ads.Googleads.V7.Common.KeywordPlanAggregateMetricResults
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanKeywordHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3


  field :search_query, 4, type: :string
  field :close_variants, 3, repeated: true, type: :string
  field :keyword_metrics, 2, type: Google.Ads.Googleads.V7.Common.KeywordPlanHistoricalMetrics
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.KeywordPlanService"

  rpc :GetKeywordPlan,
      Google.Ads.Googleads.V7.Services.GetKeywordPlanRequest,
      Google.Ads.Googleads.V7.Resources.KeywordPlan

  rpc :MutateKeywordPlans,
      Google.Ads.Googleads.V7.Services.MutateKeywordPlansRequest,
      Google.Ads.Googleads.V7.Services.MutateKeywordPlansResponse

  rpc :GenerateForecastCurve,
      Google.Ads.Googleads.V7.Services.GenerateForecastCurveRequest,
      Google.Ads.Googleads.V7.Services.GenerateForecastCurveResponse

  rpc :GenerateForecastTimeSeries,
      Google.Ads.Googleads.V7.Services.GenerateForecastTimeSeriesRequest,
      Google.Ads.Googleads.V7.Services.GenerateForecastTimeSeriesResponse

  rpc :GenerateForecastMetrics,
      Google.Ads.Googleads.V7.Services.GenerateForecastMetricsRequest,
      Google.Ads.Googleads.V7.Services.GenerateForecastMetricsResponse

  rpc :GenerateHistoricalMetrics,
      Google.Ads.Googleads.V7.Services.GenerateHistoricalMetricsRequest,
      Google.Ads.Googleads.V7.Services.GenerateHistoricalMetricsResponse
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.KeywordPlanService.Service
end
