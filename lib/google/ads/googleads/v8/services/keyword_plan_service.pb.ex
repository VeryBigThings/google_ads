defmodule Google.Ads.Googleads.V8.Services.GetKeywordPlanRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :customer_id, 1, required: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanOperation

  field :partial_failure, 3, optional: true, type: :bool
  field :validate_only, 4, optional: true, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanOperation do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :operation, 0
  field :update_mask, 4, optional: true, type: Google.Protobuf.FieldMask
  field :create, 1, optional: true, type: Google.Ads.Googleads.V8.Resources.KeywordPlan, oneof: 0
  field :update, 2, optional: true, type: Google.Ads.Googleads.V8.Resources.KeywordPlan, oneof: 0
  field :remove, 3, optional: true, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlansResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :partial_failure_error, 3, optional: true, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlansResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlansResult do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GenerateForecastCurveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GenerateForecastCurveResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :campaign_forecast_curves, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignForecastCurve
end

defmodule Google.Ads.Googleads.V8.Services.GenerateForecastTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GenerateForecastTimeSeriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :weekly_time_series_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanWeeklyTimeSeriesForecast
end

defmodule Google.Ads.Googleads.V8.Services.GenerateForecastMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan, 1, required: true, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.GenerateForecastMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :campaign_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignForecast

  field :ad_group_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupForecast

  field :keyword_forecasts, 3,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanKeywordForecast
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan_campaign, 3, optional: true, type: :string

  field :campaign_forecast, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanAdGroupForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan_ad_group, 3, optional: true, type: :string

  field :ad_group_forecast, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanKeywordForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan_ad_group_keyword, 3, optional: true, type: :string

  field :keyword_forecast, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan_campaign, 3, optional: true, type: :string

  field :max_cpc_bid_forecast_curve, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanMaxCpcBidForecastCurve
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanMaxCpcBidForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :max_cpc_bid_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanMaxCpcBidForecast
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanMaxCpcBidForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :max_cpc_bid_micros, 3, optional: true, type: :int64

  field :max_cpc_bid_forecast, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanWeeklyTimeSeriesForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan_campaign, 1, optional: true, type: :string

  field :weekly_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanWeeklyForecast
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanWeeklyForecast do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :start_date, 1, optional: true, type: :string
  field :forecast, 2, optional: true, type: Google.Ads.Googleads.V8.Services.ForecastMetrics
end

defmodule Google.Ads.Googleads.V8.Services.ForecastMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :impressions, 7, optional: true, type: :double
  field :ctr, 8, optional: true, type: :double
  field :average_cpc, 9, optional: true, type: :int64
  field :clicks, 10, optional: true, type: :double
  field :cost_micros, 11, optional: true, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.GenerateHistoricalMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :keyword_plan, 1, required: true, type: :string

  field :aggregate_metrics, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.KeywordPlanAggregateMetrics

  field :historical_metrics_options, 3,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.HistoricalMetricsOptions
end

defmodule Google.Ads.Googleads.V8.Services.GenerateHistoricalMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :metrics, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanKeywordHistoricalMetrics

  field :aggregate_metric_results, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.KeywordPlanAggregateMetricResults
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanKeywordHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :search_query, 4, optional: true, type: :string
  field :close_variants, 3, repeated: true, type: :string

  field :keyword_metrics, 2,
    optional: true,
    type: Google.Ads.Googleads.V8.Common.KeywordPlanHistoricalMetrics
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.KeywordPlanService"

  rpc :GetKeywordPlan,
      Google.Ads.Googleads.V8.Services.GetKeywordPlanRequest,
      Google.Ads.Googleads.V8.Resources.KeywordPlan

  rpc :MutateKeywordPlans,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlansRequest,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlansResponse

  rpc :GenerateForecastCurve,
      Google.Ads.Googleads.V8.Services.GenerateForecastCurveRequest,
      Google.Ads.Googleads.V8.Services.GenerateForecastCurveResponse

  rpc :GenerateForecastTimeSeries,
      Google.Ads.Googleads.V8.Services.GenerateForecastTimeSeriesRequest,
      Google.Ads.Googleads.V8.Services.GenerateForecastTimeSeriesResponse

  rpc :GenerateForecastMetrics,
      Google.Ads.Googleads.V8.Services.GenerateForecastMetricsRequest,
      Google.Ads.Googleads.V8.Services.GenerateForecastMetricsResponse

  rpc :GenerateHistoricalMetrics,
      Google.Ads.Googleads.V8.Services.GenerateHistoricalMetricsRequest,
      Google.Ads.Googleads.V8.Services.GenerateHistoricalMetricsResponse
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.KeywordPlanService.Service
end
