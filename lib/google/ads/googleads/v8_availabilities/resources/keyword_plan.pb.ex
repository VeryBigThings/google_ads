defmodule Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlan do
  @moduledoc false
  use Protobuf, syntax: :proto3



  field :resource_name, 1, type: :string
  field :id, 5, type: :int64
  field :name, 6, type: :string
  field :forecast_period, 4, type: Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanForecastPeriod
end

defmodule Google.Ads.Googleads.V8Availabilities.Resources.KeywordPlanForecastPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3



  oneof :interval, 0

  field :date_interval, 1,
    type:
      Google.Ads.Googleads.V8Availabilities.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval,
    enum: true,
    oneof: 0

  field :date_range, 2, type: Google.Ads.Googleads.V8Availabilities.Common.DateRange, oneof: 0
end
