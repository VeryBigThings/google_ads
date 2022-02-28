defmodule Google.Ads.Googleads.V10.Services.MutateKeywordPlansRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.KeywordPlanOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.KeywordPlan.t() | nil}
            | {:update, Google.Ads.Googleads.V10.Resources.KeywordPlan.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V10.Resources.KeywordPlan, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V10.Resources.KeywordPlan, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateKeywordPlansResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V10.Services.MutateKeywordPlansResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateKeywordPlansResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateKeywordPlansResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.GenerateForecastCurveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan: String.t()
        }

  defstruct keyword_plan: ""

  field :keyword_plan, 1, type: :string, json_name: "keywordPlan", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.GenerateForecastCurveResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_forecast_curves: [
            Google.Ads.Googleads.V10.Services.KeywordPlanCampaignForecastCurve.t()
          ]
        }

  defstruct campaign_forecast_curves: []

  field :campaign_forecast_curves, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanCampaignForecastCurve,
    json_name: "campaignForecastCurves"
end
defmodule Google.Ads.Googleads.V10.Services.GenerateForecastTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan: String.t()
        }

  defstruct keyword_plan: ""

  field :keyword_plan, 1, type: :string, json_name: "keywordPlan", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.GenerateForecastTimeSeriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          weekly_time_series_forecasts: [
            Google.Ads.Googleads.V10.Services.KeywordPlanWeeklyTimeSeriesForecast.t()
          ]
        }

  defstruct weekly_time_series_forecasts: []

  field :weekly_time_series_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanWeeklyTimeSeriesForecast,
    json_name: "weeklyTimeSeriesForecasts"
end
defmodule Google.Ads.Googleads.V10.Services.GenerateForecastMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan: String.t()
        }

  defstruct keyword_plan: ""

  field :keyword_plan, 1, type: :string, json_name: "keywordPlan", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.GenerateForecastMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_forecasts: [Google.Ads.Googleads.V10.Services.KeywordPlanCampaignForecast.t()],
          ad_group_forecasts: [Google.Ads.Googleads.V10.Services.KeywordPlanAdGroupForecast.t()],
          keyword_forecasts: [Google.Ads.Googleads.V10.Services.KeywordPlanKeywordForecast.t()]
        }

  defstruct campaign_forecasts: [],
            ad_group_forecasts: [],
            keyword_forecasts: []

  field :campaign_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanCampaignForecast,
    json_name: "campaignForecasts"

  field :ad_group_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanAdGroupForecast,
    json_name: "adGroupForecasts"

  field :keyword_forecasts, 3,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanKeywordForecast,
    json_name: "keywordForecasts"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanCampaignForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_campaign: String.t(),
          campaign_forecast: Google.Ads.Googleads.V10.Services.ForecastMetrics.t() | nil
        }

  defstruct keyword_plan_campaign: "",
            campaign_forecast: nil

  field :keyword_plan_campaign, 3, type: :string, json_name: "keywordPlanCampaign"

  field :campaign_forecast, 2,
    type: Google.Ads.Googleads.V10.Services.ForecastMetrics,
    json_name: "campaignForecast"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanAdGroupForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_ad_group: String.t(),
          ad_group_forecast: Google.Ads.Googleads.V10.Services.ForecastMetrics.t() | nil
        }

  defstruct keyword_plan_ad_group: "",
            ad_group_forecast: nil

  field :keyword_plan_ad_group, 3, type: :string, json_name: "keywordPlanAdGroup"

  field :ad_group_forecast, 2,
    type: Google.Ads.Googleads.V10.Services.ForecastMetrics,
    json_name: "adGroupForecast"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanKeywordForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_ad_group_keyword: String.t(),
          keyword_forecast: Google.Ads.Googleads.V10.Services.ForecastMetrics.t() | nil
        }

  defstruct keyword_plan_ad_group_keyword: "",
            keyword_forecast: nil

  field :keyword_plan_ad_group_keyword, 3, type: :string, json_name: "keywordPlanAdGroupKeyword"

  field :keyword_forecast, 2,
    type: Google.Ads.Googleads.V10.Services.ForecastMetrics,
    json_name: "keywordForecast"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanCampaignForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_campaign: String.t(),
          max_cpc_bid_forecast_curve:
            Google.Ads.Googleads.V10.Services.KeywordPlanMaxCpcBidForecastCurve.t() | nil
        }

  defstruct keyword_plan_campaign: "",
            max_cpc_bid_forecast_curve: nil

  field :keyword_plan_campaign, 3, type: :string, json_name: "keywordPlanCampaign"

  field :max_cpc_bid_forecast_curve, 2,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanMaxCpcBidForecastCurve,
    json_name: "maxCpcBidForecastCurve"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanMaxCpcBidForecastCurve do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_cpc_bid_forecasts: [
            Google.Ads.Googleads.V10.Services.KeywordPlanMaxCpcBidForecast.t()
          ]
        }

  defstruct max_cpc_bid_forecasts: []

  field :max_cpc_bid_forecasts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanMaxCpcBidForecast,
    json_name: "maxCpcBidForecasts"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanMaxCpcBidForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_cpc_bid_micros: integer,
          max_cpc_bid_forecast: Google.Ads.Googleads.V10.Services.ForecastMetrics.t() | nil
        }

  defstruct max_cpc_bid_micros: 0,
            max_cpc_bid_forecast: nil

  field :max_cpc_bid_micros, 3, type: :int64, json_name: "maxCpcBidMicros"

  field :max_cpc_bid_forecast, 2,
    type: Google.Ads.Googleads.V10.Services.ForecastMetrics,
    json_name: "maxCpcBidForecast"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanWeeklyTimeSeriesForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan_campaign: String.t(),
          weekly_forecasts: [Google.Ads.Googleads.V10.Services.KeywordPlanWeeklyForecast.t()]
        }

  defstruct keyword_plan_campaign: "",
            weekly_forecasts: []

  field :keyword_plan_campaign, 1, type: :string, json_name: "keywordPlanCampaign"

  field :weekly_forecasts, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanWeeklyForecast,
    json_name: "weeklyForecasts"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanWeeklyForecast do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: String.t(),
          forecast: Google.Ads.Googleads.V10.Services.ForecastMetrics.t() | nil
        }

  defstruct start_date: "",
            forecast: nil

  field :start_date, 1, type: :string, json_name: "startDate"
  field :forecast, 2, type: Google.Ads.Googleads.V10.Services.ForecastMetrics
end
defmodule Google.Ads.Googleads.V10.Services.ForecastMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: float | :infinity | :negative_infinity | :nan,
          ctr: float | :infinity | :negative_infinity | :nan,
          average_cpc: integer,
          clicks: float | :infinity | :negative_infinity | :nan,
          cost_micros: integer
        }

  defstruct impressions: 0.0,
            ctr: 0.0,
            average_cpc: 0,
            clicks: 0.0,
            cost_micros: 0

  field :impressions, 7, type: :double
  field :ctr, 8, type: :double
  field :average_cpc, 9, type: :int64, json_name: "averageCpc"
  field :clicks, 10, type: :double
  field :cost_micros, 11, type: :int64, json_name: "costMicros"
end
defmodule Google.Ads.Googleads.V10.Services.GenerateHistoricalMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_plan: String.t(),
          aggregate_metrics:
            Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetrics.t() | nil,
          historical_metrics_options:
            Google.Ads.Googleads.V10.Common.HistoricalMetricsOptions.t() | nil
        }

  defstruct keyword_plan: "",
            aggregate_metrics: nil,
            historical_metrics_options: nil

  field :keyword_plan, 1, type: :string, json_name: "keywordPlan", deprecated: false

  field :aggregate_metrics, 2,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetrics,
    json_name: "aggregateMetrics"

  field :historical_metrics_options, 3,
    type: Google.Ads.Googleads.V10.Common.HistoricalMetricsOptions,
    json_name: "historicalMetricsOptions"
end
defmodule Google.Ads.Googleads.V10.Services.GenerateHistoricalMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics: [Google.Ads.Googleads.V10.Services.KeywordPlanKeywordHistoricalMetrics.t()],
          aggregate_metric_results:
            Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetricResults.t() | nil
        }

  defstruct metrics: [],
            aggregate_metric_results: nil

  field :metrics, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.KeywordPlanKeywordHistoricalMetrics

  field :aggregate_metric_results, 2,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanAggregateMetricResults,
    json_name: "aggregateMetricResults"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanKeywordHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          search_query: String.t(),
          close_variants: [String.t()],
          keyword_metrics: Google.Ads.Googleads.V10.Common.KeywordPlanHistoricalMetrics.t() | nil
        }

  defstruct search_query: "",
            close_variants: [],
            keyword_metrics: nil

  field :search_query, 4, type: :string, json_name: "searchQuery"
  field :close_variants, 3, repeated: true, type: :string, json_name: "closeVariants"

  field :keyword_metrics, 2,
    type: Google.Ads.Googleads.V10.Common.KeywordPlanHistoricalMetrics,
    json_name: "keywordMetrics"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordPlanService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.KeywordPlanService"

  rpc :MutateKeywordPlans,
      Google.Ads.Googleads.V10.Services.MutateKeywordPlansRequest,
      Google.Ads.Googleads.V10.Services.MutateKeywordPlansResponse

  rpc :GenerateForecastCurve,
      Google.Ads.Googleads.V10.Services.GenerateForecastCurveRequest,
      Google.Ads.Googleads.V10.Services.GenerateForecastCurveResponse

  rpc :GenerateForecastTimeSeries,
      Google.Ads.Googleads.V10.Services.GenerateForecastTimeSeriesRequest,
      Google.Ads.Googleads.V10.Services.GenerateForecastTimeSeriesResponse

  rpc :GenerateForecastMetrics,
      Google.Ads.Googleads.V10.Services.GenerateForecastMetricsRequest,
      Google.Ads.Googleads.V10.Services.GenerateForecastMetricsResponse

  rpc :GenerateHistoricalMetrics,
      Google.Ads.Googleads.V10.Services.GenerateHistoricalMetricsRequest,
      Google.Ads.Googleads.V10.Services.GenerateHistoricalMetricsResponse
end

defmodule Google.Ads.Googleads.V10.Services.KeywordPlanService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.KeywordPlanService.Service
end
