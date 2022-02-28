defmodule Google.Ads.Googleads.V10.Resources.KeywordPlan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          forecast_period: Google.Ads.Googleads.V10.Resources.KeywordPlanForecastPeriod.t() | nil
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            forecast_period: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 5, type: :int64, deprecated: false
  field :name, 6, type: :string

  field :forecast_period, 4,
    type: Google.Ads.Googleads.V10.Resources.KeywordPlanForecastPeriod,
    json_name: "forecastPeriod"
end
defmodule Google.Ads.Googleads.V10.Resources.KeywordPlanForecastPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          interval:
            {:date_interval,
             Google.Ads.Googleads.V10.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval.t()}
            | {:date_range, Google.Ads.Googleads.V10.Common.DateRange.t() | nil}
        }

  defstruct interval: nil

  oneof :interval, 0

  field :date_interval, 1,
    type:
      Google.Ads.Googleads.V10.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval,
    json_name: "dateInterval",
    enum: true,
    oneof: 0

  field :date_range, 2,
    type: Google.Ads.Googleads.V10.Common.DateRange,
    json_name: "dateRange",
    oneof: 0
end
