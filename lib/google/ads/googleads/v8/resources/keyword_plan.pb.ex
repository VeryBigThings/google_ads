defmodule Google.Ads.Googleads.V8.Resources.KeywordPlan do
  @moduledoc false
  use Protobuf, syntax: :proto2



  field :resource_name, 1, optional: true, type: :string
  field :id, 5, optional: true, type: :int64
  field :name, 6, optional: true, type: :string

  field :forecast_period, 4,
    optional: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordPlanForecastPeriod
end

defmodule Google.Ads.Googleads.V8.Resources.KeywordPlanForecastPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto2



  oneof :interval, 0

  field :date_interval, 1,
    optional: true,
    type:
      Google.Ads.Googleads.V8.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval,
    enum: true,
    oneof: 0

  field :date_range, 2, optional: true, type: Google.Ads.Googleads.V8.Common.DateRange, oneof: 0
end
